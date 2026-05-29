import EventKit
import Foundation

enum EventKitActionError: LocalizedError {
    case calendarDenied
    case reminderDenied
    case noReminderCalendar

    var errorDescription: String? {
        switch self {
        case .calendarDenied:
            return "Calendar access was not allowed."
        case .reminderDenied:
            return "Reminders access was not allowed."
        case .noReminderCalendar:
            return "No default Reminders list is available."
        }
    }
}

@MainActor
final class EventKitManager {
    static let shared = EventKitManager()

    private let store = EKEventStore()

    private init() {}

    func addCalendarEvent(for fixture: Fixture) async throws {
        try await requestCalendarAccess()

        let event = EKEvent(eventStore: store)
        event.calendar = store.defaultCalendarForNewEvents
        event.title = "\(SampleData.teamName(fixture.homeTeamID)) v \(SampleData.teamName(fixture.awayTeamID))"
        event.startDate = fixture.date
        event.endDate = fixture.date.addingTimeInterval(2 * 60 * 60)
        event.location = "\(fixture.stadium), \(fixture.city)"
        event.notes = "\(fixture.stage)\nWorld Football Tracker"
        event.addAlarm(EKAlarm(relativeOffset: -60 * 60))

        try store.save(event, span: .thisEvent)
    }

    func addReminder(for fixture: Fixture) async throws {
        try await requestReminderAccess()

        guard let calendar = store.defaultCalendarForNewReminders() else {
            throw EventKitActionError.noReminderCalendar
        }

        let reminder = EKReminder(eventStore: store)
        reminder.calendar = calendar
        reminder.title = "Watch \(SampleData.teamName(fixture.homeTeamID)) v \(SampleData.teamName(fixture.awayTeamID))"
        reminder.notes = "\(fixture.stage)\n\(fixture.stadium), \(fixture.city)"
        reminder.dueDateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: fixture.date)
        reminder.addAlarm(EKAlarm(absoluteDate: fixture.date.addingTimeInterval(-30 * 60)))

        try store.save(reminder, commit: true)
    }

    private func requestCalendarAccess() async throws {
        let status = EKEventStore.authorizationStatus(for: .event)
        if status == .fullAccess || status == .writeOnly {
            return
        }

        let granted: Bool
        if #available(iOS 17.0, *) {
            granted = try await store.requestWriteOnlyAccessToEvents()
        } else {
            granted = try await store.requestAccess(to: .event)
        }

        if !granted {
            throw EventKitActionError.calendarDenied
        }
    }

    private func requestReminderAccess() async throws {
        let status = EKEventStore.authorizationStatus(for: .reminder)
        if status == .fullAccess {
            return
        }

        let granted: Bool
        if #available(iOS 17.0, *) {
            granted = try await store.requestFullAccessToReminders()
        } else {
            granted = try await store.requestAccess(to: .reminder)
        }

        if !granted {
            throw EventKitActionError.reminderDenied
        }
    }
}
