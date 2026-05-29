import Foundation

enum MatchStatus: String, Codable, CaseIterable {
    case scheduled = "Scheduled"
    case live = "Live"
    case halfTime = "Half-time"
    case fullTime = "Full-time"
}

struct Team: Identifiable, Hashable {
    let id: String
    let name: String
    let code: String
    let group: String
    let manager: String
    let qualification: String
    let form: [String]
    let squadNotes: String
}

struct Fixture: Identifiable, Hashable {
    let id: Int
    let stage: String
    let group: String?
    let homeTeamID: String
    let awayTeamID: String
    let date: Date
    let stadium: String
    let city: String
    let status: MatchStatus
    let homeScore: Int?
    let awayScore: Int?
}

struct Standing: Identifiable, Hashable {
    let id = UUID()
    let teamID: String
    let played: Int
    let won: Int
    let drawn: Int
    let lost: Int
    let goalsFor: Int
    let goalsAgainst: Int

    var goalDifference: Int { goalsFor - goalsAgainst }
    var points: Int { won * 3 + drawn }
}

struct Stadium: Identifiable, Hashable {
    let id: String
    let name: String
    let city: String
    let country: String
}

extension Date {
    static func worldCupDate(_ value: String) -> Date {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        return formatter.date(from: value) ?? .now
    }
}
