import SwiftUI

enum AppTheme {
    static let grass = Color(red: 0.08, green: 0.72, blue: 0.34)
    static let deepGrass = Color(red: 0.03, green: 0.43, blue: 0.20)
    static let sun = Color(red: 1.0, green: 0.82, blue: 0.18)
    static let sky = Color(red: 0.05, green: 0.53, blue: 0.96)
    static let coral = Color(red: 1.0, green: 0.31, blue: 0.24)
    static let ink = Color(red: 0.05, green: 0.08, blue: 0.14)
    static let page = LinearGradient(
        colors: [
            Color(red: 0.93, green: 1.0, blue: 0.94),
            Color(red: 0.90, green: 0.97, blue: 1.0),
            Color(red: 1.0, green: 0.97, blue: 0.86)
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
}

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            FixturesView()
                .tabItem { Label("Fixtures", systemImage: "calendar") }
            GroupsView()
                .tabItem { Label("Groups", systemImage: "tablecells") }
            TeamsView()
                .tabItem { Label("Teams", systemImage: "person.3") }
            VenuesView()
                .tabItem { Label("Venues", systemImage: "map") }
            GuideView()
                .tabItem { Label("Guide", systemImage: "book") }
        }
        .tint(AppTheme.grass)
    }
}

struct HomeView: View {
    private var nextFixture: Fixture {
        SampleData.nextFixture()
    }

    private var nextFixtures: [Fixture] {
        SampleData.upcomingFixtures(limit: 3)
    }

    private var openingFixture: Fixture {
        SampleData.fixtures[0]
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HeaderPanel()
                    CountdownPanel(fixture: nextFixture, title: countdownTitle)
                    OpeningGamePanel(fixture: openingFixture)
                    SectionHeader(title: "Next Matches", systemImage: "clock")
                    ForEach(nextFixtures) { fixture in
                        FixtureCard(fixture: fixture)
                    }
                    SectionHeader(title: "Featured Venues", systemImage: "mappin.and.ellipse")
                    VenuePreviewGrid()
                    SectionHeader(title: "Tournament Snapshot", systemImage: "trophy")
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                        StatTile(value: "48", label: "Teams")
                        StatTile(value: "12", label: "Groups")
                        StatTile(value: "104", label: "Matches")
                        StatTile(value: "3", label: "Host nations")
                    }
                }
                .padding()
            }
            .background(AppTheme.page.ignoresSafeArea())
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    private var countdownTitle: String {
        if nextFixture.id == openingFixture.id {
            return "Countdown To Opening Game"
        }
        return "Next Match Countdown"
    }
}

struct FixturesView: View {
    @State private var selectedStage = "All"
    private let stages = ["All", "Group Stage", "Round of 32", "Round of 16", "Quarter-final", "Semi-final", "Third-place play-off", "Final"]

    private var filteredFixtures: [Fixture] {
        selectedStage == "All" ? SampleData.fixtures : SampleData.fixtures.filter { $0.stage == selectedStage }
    }

    var body: some View {
        NavigationStack {
            List {
                Picker("Stage", selection: $selectedStage) {
                    ForEach(stages, id: \.self) { Text($0) }
                }
                .pickerStyle(.segmented)
                .tint(AppTheme.grass)
                .listRowInsets(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                .listRowBackground(Color.clear)

                ForEach(filteredFixtures) { fixture in
                    FixtureCard(fixture: fixture)
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(AppTheme.page.ignoresSafeArea())
            .navigationTitle("Fixtures")
        }
    }
}

struct GroupsView: View {
    private let groups = Array(Set(SampleData.teams.map(\.group))).sorted()

    var body: some View {
        NavigationStack {
            List {
                ForEach(groups, id: \.self) { group in
                    Section {
                        ForEach(SampleData.teams.filter { $0.group == group }) { team in
                            HStack {
                                Text(team.code)
                                    .font(.caption.weight(.bold))
                                    .frame(width: 44)
                                    .padding(.vertical, 6)
                                    .background(groupColor(group).opacity(0.18))
                                    .foregroundStyle(groupColor(group))
                                    .clipShape(RoundedRectangle(cornerRadius: 6))
                                Text(team.name)
                                    .font(.headline)
                                Spacer()
                                Text("0 pts")
                                    .foregroundStyle(.secondary)
                            }
                            .listRowBackground(Color.white.opacity(0.78))
                        }
                    } header: {
                        Text("Group \(group)")
                            .font(.title3.weight(.bold))
                            .foregroundStyle(AppTheme.ink)
                            .textCase(nil)
                            .padding(.top, 8)
                            .accessibilityAddTraits(.isHeader)
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .background(AppTheme.page.ignoresSafeArea())
            .navigationTitle("Groups")
        }
    }

    private func groupColor(_ group: String) -> Color {
        let colors = [AppTheme.grass, AppTheme.sky, AppTheme.coral, AppTheme.sun]
        return colors[(group.unicodeScalars.first.map { Int($0.value) } ?? 0) % colors.count]
    }
}

struct TeamsView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.teams) { team in
                NavigationLink {
                    TeamDetailView(team: team)
                } label: {
                    VStack(alignment: .leading, spacing: 6) {
                        HStack {
                            Text(team.name)
                                .font(.headline)
                            Spacer()
                            Text("Group \(team.group)")
                                .font(.caption.weight(.semibold))
                                .foregroundStyle(AppTheme.sky)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(AppTheme.sky.opacity(0.13))
                                .clipShape(Capsule())
                        }
                        Text(team.qualification)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 4)
                }
                .listRowBackground(Color.white.opacity(0.82))
            }
            .scrollContentBackground(.hidden)
            .background(AppTheme.page.ignoresSafeArea())
            .navigationTitle("Teams")
        }
    }
}

struct TeamDetailView: View {
    let team: Team
    private var squad: [SquadPlayer] {
        SampleData.squad(for: team.id)
    }

    var body: some View {
        List {
            Section("Overview") {
                LabeledContent("Code", value: team.code)
                LabeledContent("Group", value: team.group)
                LabeledContent("Manager", value: team.manager)
                LabeledContent("Qualified", value: team.qualification)
            }
            Section("Recent Form") {
                HStack(spacing: 8) {
                    ForEach(team.form, id: \.self) { result in
                        Text(result)
                            .font(.caption.weight(.bold))
                            .frame(width: 28, height: 28)
                            .background(resultColor(result))
                            .foregroundStyle(.white)
                            .clipShape(Circle())
                    }
                }
            }
            Section("Squad Notes") {
                Text(team.squadNotes)
            }
            Section("Basic Squad") {
                if squad.isEmpty {
                    ContentUnavailableView(
                        "Squad not added yet",
                        systemImage: "person.3",
                        description: Text("Add the confirmed player list here once it has been checked.")
                    )
                } else {
                    ForEach(squad) { player in
                        SquadPlayerRow(player: player)
                    }
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(AppTheme.page.ignoresSafeArea())
        .navigationTitle(team.name)
    }

    private func resultColor(_ result: String) -> Color {
        switch result {
        case "W": return .green
        case "D": return .orange
        default: return .red
        }
    }
}

struct SquadPlayerRow: View {
    let player: SquadPlayer

    var body: some View {
        HStack(spacing: 12) {
            Text(player.number.map(String.init) ?? "-")
                .font(.caption.weight(.bold))
                .foregroundStyle(.white)
                .frame(width: 34, height: 34)
                .background(AppTheme.grass)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(player.name)
                    .font(.headline)
                Text(player.club)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Text(player.position)
                .font(.caption.weight(.semibold))
                .foregroundStyle(AppTheme.sky)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(AppTheme.sky.opacity(0.13))
                .clipShape(Capsule())
        }
        .padding(.vertical, 3)
    }
}

struct VenuesView: View {
    var body: some View {
        NavigationStack {
            List(SampleData.stadiums) { stadium in
                NavigationLink {
                    VenueDetailView(stadium: stadium)
                } label: {
                    VStack(alignment: .leading, spacing: 6) {
                        Text(stadium.name)
                            .font(.headline)
                            .foregroundStyle(AppTheme.ink)
                        HStack {
                            Label("\(stadium.city), \(stadium.country)", systemImage: "mappin.and.ellipse")
                            Spacer()
                            Text("\(SampleData.fixtures(at: stadium.name).count) games")
                                .font(.caption.weight(.bold))
                                .foregroundStyle(AppTheme.grass)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(AppTheme.grass.opacity(0.12))
                                .clipShape(Capsule())
                        }
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 4)
                }
                .listRowBackground(Color.white.opacity(0.82))
            }
            .scrollContentBackground(.hidden)
            .background(AppTheme.page.ignoresSafeArea())
            .navigationTitle("Venues")
        }
    }
}

struct VenueDetailView: View {
    let stadium: Stadium

    private var fixtures: [Fixture] {
        SampleData.fixtures(at: stadium.name)
    }

    var body: some View {
        List {
            Section("Venue") {
                LabeledContent("City", value: stadium.city)
                LabeledContent("Country", value: stadium.country)
                LabeledContent("Matches", value: "\(fixtures.count)")
            }
            Section("Games Here") {
                ForEach(fixtures) { fixture in
                    FixtureCard(fixture: fixture)
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(AppTheme.page.ignoresSafeArea())
        .navigationTitle(stadium.name)
    }
}

struct GuideView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Format") {
                    Text("The 2026 tournament has 48 teams in 12 groups of four. The top two in each group and the eight best third-place teams reach the Round of 32.")
                }
                Section("Companion Features") {
                    Label("Countdown clock for the next match", systemImage: "timer")
                    Label("Opening game spotlight", systemImage: "sparkles")
                    Label("Fixtures and match status", systemImage: "calendar")
                    Label("Group tables", systemImage: "tablecells")
                    Label("Venue explorer with games by stadium", systemImage: "map")
                    Label("Teams, squads, managers, and form", systemImage: "person.3")
                    Label("Live-score fields ready for data import", systemImage: "dot.radiowaves.left.and.right")
                    Label("Calendar events and Reminders for fixtures", systemImage: "bell.badge")
                }
                Section("Disclaimer") {
                    Text("Unofficial tournament companion. This app is not affiliated with the tournament organisers.")
                }
                Section("Not Included") {
                    Text("No friends, accounts, private leagues, or leaderboards are included.")
                }
            }
            .scrollContentBackground(.hidden)
            .background(AppTheme.page.ignoresSafeArea())
            .navigationTitle("Guide")
        }
    }
}

struct CountdownPanel: View {
    let fixture: Fixture
    let title: String
    @State private var now = Date()

    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label(title, systemImage: "timer")
                    .font(.headline)
                Spacer()
                Text(fixture.stage)
                    .font(.caption.weight(.bold))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(AppTheme.sun.opacity(0.22))
                    .foregroundStyle(AppTheme.ink)
                    .clipShape(Capsule())
            }

            Text("\(SampleData.teamName(fixture.homeTeamID)) v \(SampleData.teamName(fixture.awayTeamID))")
                .font(.title2.weight(.bold))
                .foregroundStyle(.white)

            HStack(spacing: 10) {
                CountdownUnit(value: countdown.days, label: "Days")
                CountdownUnit(value: countdown.hours, label: "Hours")
                CountdownUnit(value: countdown.minutes, label: "Mins")
                CountdownUnit(value: countdown.seconds, label: "Secs")
            }

            HStack {
                Label(fixture.date.formatted(date: .abbreviated, time: .shortened), systemImage: "clock")
                Spacer()
                Label(fixture.stadium, systemImage: "mappin")
                    .lineLimit(1)
            }
            .font(.caption.weight(.semibold))
            .foregroundStyle(.white.opacity(0.84))
        }
        .padding()
        .background(
            ZStack {
                LinearGradient(colors: [AppTheme.ink, AppTheme.grass], startPoint: .topLeading, endPoint: .bottomTrailing)
                PitchLines()
                    .stroke(.white.opacity(0.16), lineWidth: 2)
            }
        )
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(color: AppTheme.grass.opacity(0.18), radius: 18, x: 0, y: 10)
        .onReceive(timer) { value in
            now = value
        }
    }

    private var countdown: (days: Int, hours: Int, minutes: Int, seconds: Int) {
        let remaining = max(0, Int(fixture.date.timeIntervalSince(now)))
        let days = remaining / 86_400
        let hours = (remaining % 86_400) / 3_600
        let minutes = (remaining % 3_600) / 60
        let seconds = remaining % 60
        return (days, hours, minutes, seconds)
    }
}

struct CountdownUnit: View {
    let value: Int
    let label: String

    var body: some View {
        VStack(spacing: 4) {
            Text("\(value)")
                .font(.title2.monospacedDigit().weight(.heavy))
                .foregroundStyle(AppTheme.ink)
                .minimumScaleFactor(0.7)
                .lineLimit(1)
            Text(label)
                .font(.caption2.weight(.bold))
                .foregroundStyle(AppTheme.ink.opacity(0.68))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 10)
        .background(Color.white.opacity(0.90))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct OpeningGamePanel: View {
    let fixture: Fixture

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Label("Opening Game", systemImage: "sparkles")
                .font(.headline)
                .foregroundStyle(AppTheme.ink)
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(SampleData.teamName(fixture.homeTeamID)) v \(SampleData.teamName(fixture.awayTeamID))")
                        .font(.headline)
                        .foregroundStyle(AppTheme.ink)
                    Text(fixture.date.formatted(date: .complete, time: .shortened))
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text("\(fixture.stadium), \(fixture.city)")
                        .font(.caption.weight(.semibold))
                        .foregroundStyle(AppTheme.grass)
                }
                Spacer()
                Image(systemName: "soccerball")
                    .font(.title)
                    .foregroundStyle(AppTheme.coral)
                    .padding(10)
                    .background(AppTheme.coral.opacity(0.12))
                    .clipShape(Circle())
            }
        }
        .padding()
        .background(Color.white.opacity(0.86))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(AppTheme.grass.opacity(0.16), lineWidth: 1)
        )
    }
}

struct VenuePreviewGrid: View {
    private let featured = Array(SampleData.stadiums.prefix(4))

    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
            ForEach(featured) { stadium in
                VStack(alignment: .leading, spacing: 8) {
                    Text(stadium.name)
                        .font(.headline)
                        .foregroundStyle(AppTheme.ink)
                        .lineLimit(2)
                    Label(stadium.city, systemImage: "mappin")
                        .font(.caption.weight(.semibold))
                        .foregroundStyle(AppTheme.ink.opacity(0.78))
                    Text("\(SampleData.fixtures(at: stadium.name).count) matches")
                        .font(.caption.weight(.heavy))
                        .foregroundStyle(AppTheme.deepGrass)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(AppTheme.deepGrass.opacity(0.12))
                        .clipShape(Capsule())
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.white.opacity(0.84))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(AppTheme.sky.opacity(0.14), lineWidth: 1)
                )
            }
        }
    }
}

struct PitchLines: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRect(rect.insetBy(dx: 18, dy: 18))
        path.move(to: CGPoint(x: rect.midX, y: rect.minY + 18))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY - 18))
        path.addEllipse(in: CGRect(x: rect.midX - 42, y: rect.midY - 42, width: 84, height: 84))
        return path
    }
}

struct HeaderPanel: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("World Football Tracker")
                .font(.largeTitle.weight(.bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
            Text("A matchday companion for teams, groups, fixtures, squads, form, managers, and live score updates.")
                .font(.headline)
                .foregroundStyle(.white.opacity(0.88))
                .multilineTextAlignment(.center)
            HStack {
                Label("Canada", systemImage: "mappin.and.ellipse")
                Label("Mexico", systemImage: "mappin.and.ellipse")
                Label("USA", systemImage: "mappin.and.ellipse")
            }
            .font(.caption.weight(.semibold))
            .foregroundStyle(AppTheme.ink.opacity(0.8))
            .padding(.top, 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            ZStack {
                LinearGradient(colors: [AppTheme.grass, AppTheme.sky, AppTheme.coral], startPoint: .topLeading, endPoint: .bottomTrailing)
                Circle()
                    .fill(AppTheme.sun.opacity(0.85))
                    .frame(width: 150, height: 150)
                    .offset(x: 150, y: -56)
            }
        )
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(color: AppTheme.sky.opacity(0.18), radius: 18, x: 0, y: 10)
    }
}

struct SectionHeader: View {
    let title: String
    let systemImage: String

    var body: some View {
        Label(title, systemImage: systemImage)
            .font(.headline)
            .foregroundStyle(AppTheme.ink)
    }
}

struct FixtureCard: View {
    let fixture: Fixture
    @State private var calendarAdded = false
    @State private var reminderAdded = false
    @State private var actionMessage: String?

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(fixture.stage)
                    .font(.caption.weight(.bold))
                    .foregroundStyle(AppTheme.coral)
                Spacer()
                Text(fixture.status.rawValue)
                    .font(.caption.weight(.bold))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(statusColor.opacity(0.16))
                    .foregroundStyle(statusColor)
                    .clipShape(Capsule())
            }
            HStack {
                Text(SampleData.teamName(fixture.homeTeamID))
                    .font(.headline)
                    .foregroundStyle(AppTheme.ink)
                Spacer()
                Text(scoreText)
                    .font(.headline.monospacedDigit())
                    .foregroundStyle(AppTheme.grass)
                Spacer()
                Text(SampleData.teamName(fixture.awayTeamID))
                    .font(.headline)
                    .foregroundStyle(AppTheme.ink)
                    .multilineTextAlignment(.trailing)
            }
            HStack {
                Label(fixture.date.formatted(date: .abbreviated, time: .shortened), systemImage: "clock")
                Spacer()
                Label(fixture.city, systemImage: "mappin")
            }
            .font(.caption.weight(.bold))
            .foregroundStyle(AppTheme.ink.opacity(0.78))

            HStack(spacing: 10) {
                Button {
                    Task { await addToCalendar() }
                } label: {
                    Label(calendarAdded ? "Added" : "Calendar", systemImage: calendarAdded ? "checkmark.circle.fill" : "calendar.badge.plus")
                }
                .buttonStyle(FixtureActionButtonStyle(color: AppTheme.sky))
                .disabled(calendarAdded)

                Button {
                    Task { await addReminder() }
                } label: {
                    Label(reminderAdded ? "Added" : "Reminder", systemImage: reminderAdded ? "checkmark.circle.fill" : "bell.badge")
                }
                .buttonStyle(FixtureActionButtonStyle(color: AppTheme.coral))
                .disabled(reminderAdded)
            }

            if let actionMessage {
                Text(actionMessage)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(
            LinearGradient(
                colors: [Color.white, Color.white.opacity(0.84), AppTheme.sun.opacity(0.10)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(AppTheme.grass.opacity(0.14), lineWidth: 1)
        )
        .shadow(color: AppTheme.ink.opacity(0.07), radius: 10, x: 0, y: 6)
    }

    private func addToCalendar() async {
        do {
            try await EventKitManager.shared.addCalendarEvent(for: fixture)
            calendarAdded = true
            actionMessage = "Added to Calendar."
        } catch {
            actionMessage = error.localizedDescription
        }
    }

    private func addReminder() async {
        do {
            try await EventKitManager.shared.addReminder(for: fixture)
            reminderAdded = true
            actionMessage = "Added to Reminders."
        } catch {
            actionMessage = error.localizedDescription
        }
    }

    private var scoreText: String {
        guard let homeScore = fixture.homeScore, let awayScore = fixture.awayScore else {
            return "v"
        }
        return "\(homeScore)-\(awayScore)"
    }

    private var statusColor: Color {
        switch fixture.status {
        case .live: return .red
        case .halfTime: return .orange
        case .fullTime: return .green
        case .scheduled: return .blue
        }
    }
}

struct FixtureActionButtonStyle: ButtonStyle {
    let color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.caption.weight(.bold))
            .frame(maxWidth: .infinity)
            .padding(.vertical, 9)
            .foregroundStyle(color)
            .background(color.opacity(configuration.isPressed ? 0.22 : 0.12))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct StatTile: View {
    let value: String
    let label: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(value)
                .font(.title.weight(.bold))
                .foregroundStyle(AppTheme.ink)
            Text(label)
                .font(.caption.weight(.bold))
                .foregroundStyle(AppTheme.ink.opacity(0.82))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            LinearGradient(colors: [AppTheme.sun.opacity(0.30), Color.white.opacity(0.92)], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(AppTheme.sun.opacity(0.42), lineWidth: 1)
        )
    }
}

#Preview {
    ContentView()
}
