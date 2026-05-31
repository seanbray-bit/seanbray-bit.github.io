import SwiftUI
import WidgetKit

struct WidgetFixture {
    let stage: String
    let home: String
    let away: String
    let date: Date
    let stadium: String

    var title: String {
        "\(home) v \(away)"
    }
}

enum WidgetFixtureData {
    static let fixtures: [WidgetFixture] = [
        WidgetFixture(stage: "Opening Game", home: "Mexico", away: "South Africa", date: worldCupDate("2026-06-11T19:00:00Z"), stadium: "Estadio Azteca"),
        WidgetFixture(stage: "Group Stage", home: "South Korea", away: "Czech Republic", date: worldCupDate("2026-06-12T02:00:00Z"), stadium: "Estadio Akron"),
        WidgetFixture(stage: "Group Stage", home: "Canada", away: "Bosnia & Herzegovina", date: worldCupDate("2026-06-12T19:00:00Z"), stadium: "BMO Field"),
        WidgetFixture(stage: "Group Stage", home: "USA", away: "Paraguay", date: worldCupDate("2026-06-13T01:00:00Z"), stadium: "SoFi Stadium"),
        WidgetFixture(stage: "Group Stage", home: "Qatar", away: "Switzerland", date: worldCupDate("2026-06-13T19:00:00Z"), stadium: "Levi's Stadium"),
        WidgetFixture(stage: "Group Stage", home: "Brazil", away: "Morocco", date: worldCupDate("2026-06-13T22:00:00Z"), stadium: "MetLife Stadium"),
        WidgetFixture(stage: "Group Stage", home: "Haiti", away: "Scotland", date: worldCupDate("2026-06-14T01:00:00Z"), stadium: "Gillette Stadium"),
        WidgetFixture(stage: "Group Stage", home: "Australia", away: "Turkey", date: worldCupDate("2026-06-14T04:00:00Z"), stadium: "BC Place"),
        WidgetFixture(stage: "Group Stage", home: "Germany", away: "Curacao", date: worldCupDate("2026-06-14T17:00:00Z"), stadium: "NRG Stadium"),
        WidgetFixture(stage: "Group Stage", home: "Netherlands", away: "Japan", date: worldCupDate("2026-06-14T20:00:00Z"), stadium: "AT&T Stadium")
    ]

    static func nextFixture(from date: Date = .now) -> WidgetFixture {
        fixtures.first(where: { $0.date >= date }) ?? fixtures[0]
    }

    private static func worldCupDate(_ value: String) -> Date {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        return formatter.date(from: value) ?? .now
    }
}

struct NextMatchEntry: TimelineEntry {
    let date: Date
    let fixture: WidgetFixture
}

struct NextMatchProvider: TimelineProvider {
    func placeholder(in context: Context) -> NextMatchEntry {
        NextMatchEntry(date: .now, fixture: WidgetFixtureData.fixtures[0])
    }

    func getSnapshot(in context: Context, completion: @escaping (NextMatchEntry) -> Void) {
        completion(NextMatchEntry(date: .now, fixture: WidgetFixtureData.nextFixture()))
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<NextMatchEntry>) -> Void) {
        let now = Date()
        let fixture = WidgetFixtureData.nextFixture(from: now)
        let entry = NextMatchEntry(date: now, fixture: fixture)
        let refresh = Calendar.current.date(byAdding: .minute, value: 15, to: now) ?? now.addingTimeInterval(900)
        completion(Timeline(entries: [entry], policy: .after(refresh)))
    }
}

struct NextMatchWidgetEntryView: View {
    @Environment(\.widgetFamily) private var family
    let entry: NextMatchEntry

    var body: some View {
        switch family {
        case .systemSmall:
            smallLayout
        default:
            mediumLayout
        }
    }

    private var smallLayout: some View {
        VStack(alignment: .leading, spacing: 8) {
            Label("Next match", systemImage: "timer")
                .font(.caption.weight(.bold))
                .foregroundStyle(.white.opacity(0.86))
            Spacer()
            Text(countdownText)
                .font(.title.weight(.heavy))
                .minimumScaleFactor(0.66)
                .lineLimit(1)
                .foregroundStyle(.white)
            Text(entry.fixture.title)
                .font(.caption.weight(.bold))
                .lineLimit(2)
                .foregroundStyle(.white)
            Text(entry.fixture.date.formatted(date: .abbreviated, time: .shortened))
                .font(.caption2)
                .foregroundStyle(.white.opacity(0.78))
        }
        .padding()
        .containerBackground(for: .widget) {
            widgetBackground
        }
    }

    private var mediumLayout: some View {
        HStack(spacing: 14) {
            VStack(alignment: .leading, spacing: 8) {
                Label(entry.fixture.stage, systemImage: "soccerball")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(.white.opacity(0.86))
                Text(entry.fixture.title)
                    .font(.headline.weight(.bold))
                    .lineLimit(2)
                    .foregroundStyle(.white)
                Label(entry.fixture.stadium, systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .lineLimit(1)
                    .foregroundStyle(.white.opacity(0.78))
            }
            Spacer()
            VStack(spacing: 4) {
                Text(countdownText)
                    .font(.title.weight(.heavy))
                    .minimumScaleFactor(0.7)
                    .lineLimit(1)
                    .foregroundStyle(.white)
                Text(entry.fixture.date.formatted(date: .abbreviated, time: .shortened))
                    .font(.caption2.weight(.semibold))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white.opacity(0.78))
            }
            .frame(width: 110)
        }
        .padding()
        .containerBackground(for: .widget) {
            widgetBackground
        }
    }

    private var countdownText: String {
        let remaining = max(0, Int(entry.fixture.date.timeIntervalSince(entry.date)))
        let days = remaining / 86_400
        let hours = (remaining % 86_400) / 3_600

        if days > 0 {
            return "\(days)d \(hours)h"
        }

        let minutes = (remaining % 3_600) / 60
        return "\(hours)h \(minutes)m"
    }

    private var widgetBackground: some View {
        LinearGradient(
            colors: [
                Color(red: 0.02, green: 0.24, blue: 0.13),
                Color(red: 0.08, green: 0.50, blue: 0.25)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .overlay {
            PitchLineShape()
                .stroke(.white.opacity(0.18), lineWidth: 2)
                .padding(8)
        }
    }
}

struct PitchLineShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRect(rect)
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addEllipse(in: CGRect(x: rect.midX - 28, y: rect.midY - 28, width: 56, height: 56))
        return path
    }
}

struct NextMatchWidget: Widget {
    let kind = "NextMatchWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: NextMatchProvider()) { entry in
            NextMatchWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Next Match")
        .description("Shows the next World Football Tracker match countdown.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

@main
struct WorldFootballTrackerWidgets: WidgetBundle {
    var body: some Widget {
        NextMatchWidget()
    }
}
