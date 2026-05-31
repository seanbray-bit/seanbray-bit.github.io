import Foundation

enum SampleData {
    static let stadiums: [Stadium] = [
        Stadium(id: "estadio-azteca", name: "Estadio Azteca", city: "Mexico City", country: "Mexico"),
        Stadium(id: "estadio-akron", name: "Estadio Akron", city: "Guadalajara", country: "Mexico"),
        Stadium(id: "bmo-field", name: "BMO Field", city: "Toronto", country: "Canada"),
        Stadium(id: "sofi-stadium", name: "SoFi Stadium", city: "Los Angeles", country: "USA"),
        Stadium(id: "levi-s-stadium", name: "Levi's Stadium", city: "San Francisco Bay Area", country: "USA"),
        Stadium(id: "metlife-stadium", name: "MetLife Stadium", city: "New York/New Jersey", country: "USA"),
        Stadium(id: "gillette-stadium", name: "Gillette Stadium", city: "Boston", country: "USA"),
        Stadium(id: "bc-place", name: "BC Place", city: "Vancouver", country: "Canada"),
        Stadium(id: "nrg-stadium", name: "NRG Stadium", city: "Houston", country: "USA"),
        Stadium(id: "at-t-stadium", name: "AT&T Stadium", city: "Dallas", country: "USA"),
        Stadium(id: "lincoln-financial-field", name: "Lincoln Financial Field", city: "Philadelphia", country: "USA"),
        Stadium(id: "estadio-bbva", name: "Estadio BBVA", city: "Monterrey", country: "Mexico"),
        Stadium(id: "mercedes-benz-stadium", name: "Mercedes-Benz Stadium", city: "Atlanta", country: "USA"),
        Stadium(id: "lumen-field", name: "Lumen Field", city: "Seattle", country: "USA"),
        Stadium(id: "hard-rock-stadium", name: "Hard Rock Stadium", city: "Miami", country: "USA"),
        Stadium(id: "geha-field-at-arrowhead-stadium", name: "GEHA Field at Arrowhead Stadium", city: "Kansas City", country: "USA")
    ]

    static let teams: [Team] = [
        Team(id: "czech republic", name: "Czech Republic", code: "CZE", group: "A", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "mexico", name: "Mexico", code: "MEX", group: "A", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "south africa", name: "South Africa", code: "RSA", group: "A", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "south korea", name: "South Korea", code: "KOR", group: "A", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "bosnia & herzegovina", name: "Bosnia & Herzegovina", code: "BIH", group: "B", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "canada", name: "Canada", code: "CAN", group: "B", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "qatar", name: "Qatar", code: "QAT", group: "B", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "switzerland", name: "Switzerland", code: "SWI", group: "B", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "brazil", name: "Brazil", code: "BRA", group: "C", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "haiti", name: "Haiti", code: "HAI", group: "C", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "morocco", name: "Morocco", code: "MOR", group: "C", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "scotland", name: "Scotland", code: "SCO", group: "C", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "australia", name: "Australia", code: "AUS", group: "D", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "paraguay", name: "Paraguay", code: "PAR", group: "D", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "turkey", name: "Turkey", code: "TUR", group: "D", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "usa", name: "USA", code: "USA", group: "D", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "curaçao", name: "Curaçao", code: "CUW", group: "E", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "ecuador", name: "Ecuador", code: "ECU", group: "E", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "germany", name: "Germany", code: "GER", group: "E", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "ivory coast", name: "Ivory Coast", code: "CIV", group: "E", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "japan", name: "Japan", code: "JAP", group: "F", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "netherlands", name: "Netherlands", code: "NET", group: "F", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "sweden", name: "Sweden", code: "SWE", group: "F", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "tunisia", name: "Tunisia", code: "TUN", group: "F", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "belgium", name: "Belgium", code: "BEL", group: "G", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "egypt", name: "Egypt", code: "EGY", group: "G", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "iran", name: "Iran", code: "IRA", group: "G", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "new zealand", name: "New Zealand", code: "NZL", group: "G", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "cape verde", name: "Cape Verde", code: "CPV", group: "H", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "saudi arabia", name: "Saudi Arabia", code: "KSA", group: "H", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "spain", name: "Spain", code: "SPA", group: "H", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "uruguay", name: "Uruguay", code: "URU", group: "H", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "france", name: "France", code: "FRA", group: "I", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "iraq", name: "Iraq", code: "IRA", group: "I", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "norway", name: "Norway", code: "NOR", group: "I", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "senegal", name: "Senegal", code: "SEN", group: "I", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "algeria", name: "Algeria", code: "ALG", group: "J", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "argentina", name: "Argentina", code: "ARG", group: "J", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "austria", name: "Austria", code: "AUS", group: "J", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "jordan", name: "Jordan", code: "JOR", group: "J", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "colombia", name: "Colombia", code: "COL", group: "K", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "dr congo", name: "DR Congo", code: "COD", group: "K", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "portugal", name: "Portugal", code: "POR", group: "K", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "uzbekistan", name: "Uzbekistan", code: "UZB", group: "K", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "croatia", name: "Croatia", code: "CRO", group: "L", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "england", name: "England", code: "ENG", group: "L", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "ghana", name: "Ghana", code: "GHA", group: "L", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed."),
        Team(id: "panama", name: "Panama", code: "PAN", group: "L", manager: "TBC", qualification: "Qualified for World Cup 2026", form: [], squadNotes: "Final squad list and player notes to be added when confirmed.")
    ]

    static let fixtures: [Fixture] = [
        Fixture(id: 1, stage: "Group Stage", group: .some("A"), homeTeamID: "mexico", awayTeamID: "south africa", date: .worldCupDate("2026-06-11T19:00:00Z"), stadium: "Estadio Azteca", city: "Mexico City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 2, stage: "Group Stage", group: .some("A"), homeTeamID: "south korea", awayTeamID: "czech republic", date: .worldCupDate("2026-06-12T02:00:00Z"), stadium: "Estadio Akron", city: "Guadalajara", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 3, stage: "Group Stage", group: .some("B"), homeTeamID: "canada", awayTeamID: "bosnia & herzegovina", date: .worldCupDate("2026-06-12T19:00:00Z"), stadium: "BMO Field", city: "Toronto", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 4, stage: "Group Stage", group: .some("D"), homeTeamID: "usa", awayTeamID: "paraguay", date: .worldCupDate("2026-06-13T01:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 5, stage: "Group Stage", group: .some("B"), homeTeamID: "qatar", awayTeamID: "switzerland", date: .worldCupDate("2026-06-13T19:00:00Z"), stadium: "Levi's Stadium", city: "San Francisco Bay Area", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 6, stage: "Group Stage", group: .some("C"), homeTeamID: "brazil", awayTeamID: "morocco", date: .worldCupDate("2026-06-13T22:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 7, stage: "Group Stage", group: .some("C"), homeTeamID: "haiti", awayTeamID: "scotland", date: .worldCupDate("2026-06-14T01:00:00Z"), stadium: "Gillette Stadium", city: "Boston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 8, stage: "Group Stage", group: .some("D"), homeTeamID: "australia", awayTeamID: "turkey", date: .worldCupDate("2026-06-14T04:00:00Z"), stadium: "BC Place", city: "Vancouver", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 9, stage: "Group Stage", group: .some("E"), homeTeamID: "germany", awayTeamID: "curaçao", date: .worldCupDate("2026-06-14T17:00:00Z"), stadium: "NRG Stadium", city: "Houston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 10, stage: "Group Stage", group: .some("F"), homeTeamID: "netherlands", awayTeamID: "japan", date: .worldCupDate("2026-06-14T20:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 11, stage: "Group Stage", group: .some("E"), homeTeamID: "ivory coast", awayTeamID: "ecuador", date: .worldCupDate("2026-06-14T23:00:00Z"), stadium: "Lincoln Financial Field", city: "Philadelphia", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 12, stage: "Group Stage", group: .some("F"), homeTeamID: "sweden", awayTeamID: "tunisia", date: .worldCupDate("2026-06-15T02:00:00Z"), stadium: "Estadio BBVA", city: "Monterrey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 13, stage: "Group Stage", group: .some("H"), homeTeamID: "spain", awayTeamID: "cape verde", date: .worldCupDate("2026-06-15T16:00:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 14, stage: "Group Stage", group: .some("G"), homeTeamID: "belgium", awayTeamID: "egypt", date: .worldCupDate("2026-06-15T19:00:00Z"), stadium: "Lumen Field", city: "Seattle", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 15, stage: "Group Stage", group: .some("H"), homeTeamID: "saudi arabia", awayTeamID: "uruguay", date: .worldCupDate("2026-06-15T22:00:00Z"), stadium: "Hard Rock Stadium", city: "Miami", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 16, stage: "Group Stage", group: .some("G"), homeTeamID: "iran", awayTeamID: "new zealand", date: .worldCupDate("2026-06-16T01:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 17, stage: "Group Stage", group: .some("I"), homeTeamID: "france", awayTeamID: "senegal", date: .worldCupDate("2026-06-16T19:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 18, stage: "Group Stage", group: .some("I"), homeTeamID: "iraq", awayTeamID: "norway", date: .worldCupDate("2026-06-16T22:00:00Z"), stadium: "Gillette Stadium", city: "Boston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 19, stage: "Group Stage", group: .some("J"), homeTeamID: "argentina", awayTeamID: "algeria", date: .worldCupDate("2026-06-17T01:00:00Z"), stadium: "GEHA Field at Arrowhead Stadium", city: "Kansas City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 20, stage: "Group Stage", group: .some("J"), homeTeamID: "austria", awayTeamID: "jordan", date: .worldCupDate("2026-06-17T04:00:00Z"), stadium: "Levi's Stadium", city: "San Francisco Bay Area", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 21, stage: "Group Stage", group: .some("K"), homeTeamID: "portugal", awayTeamID: "dr congo", date: .worldCupDate("2026-06-17T17:00:00Z"), stadium: "NRG Stadium", city: "Houston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 22, stage: "Group Stage", group: .some("L"), homeTeamID: "england", awayTeamID: "croatia", date: .worldCupDate("2026-06-17T20:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 23, stage: "Group Stage", group: .some("L"), homeTeamID: "ghana", awayTeamID: "panama", date: .worldCupDate("2026-06-17T23:00:00Z"), stadium: "BMO Field", city: "Toronto", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 24, stage: "Group Stage", group: .some("K"), homeTeamID: "uzbekistan", awayTeamID: "colombia", date: .worldCupDate("2026-06-18T02:00:00Z"), stadium: "Estadio Azteca", city: "Mexico City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 25, stage: "Group Stage", group: .some("A"), homeTeamID: "czech republic", awayTeamID: "south africa", date: .worldCupDate("2026-06-18T16:00:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 26, stage: "Group Stage", group: .some("B"), homeTeamID: "switzerland", awayTeamID: "bosnia & herzegovina", date: .worldCupDate("2026-06-18T19:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 27, stage: "Group Stage", group: .some("B"), homeTeamID: "canada", awayTeamID: "qatar", date: .worldCupDate("2026-06-18T22:00:00Z"), stadium: "BC Place", city: "Vancouver", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 28, stage: "Group Stage", group: .some("A"), homeTeamID: "mexico", awayTeamID: "south korea", date: .worldCupDate("2026-06-19T01:00:00Z"), stadium: "Estadio Akron", city: "Guadalajara", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 29, stage: "Group Stage", group: .some("D"), homeTeamID: "usa", awayTeamID: "australia", date: .worldCupDate("2026-06-19T19:00:00Z"), stadium: "Lumen Field", city: "Seattle", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 30, stage: "Group Stage", group: .some("C"), homeTeamID: "scotland", awayTeamID: "morocco", date: .worldCupDate("2026-06-19T22:00:00Z"), stadium: "Gillette Stadium", city: "Boston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 31, stage: "Group Stage", group: .some("C"), homeTeamID: "brazil", awayTeamID: "haiti", date: .worldCupDate("2026-06-20T00:30:00Z"), stadium: "Lincoln Financial Field", city: "Philadelphia", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 32, stage: "Group Stage", group: .some("D"), homeTeamID: "turkey", awayTeamID: "paraguay", date: .worldCupDate("2026-06-20T03:00:00Z"), stadium: "Levi's Stadium", city: "San Francisco Bay Area", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 33, stage: "Group Stage", group: .some("F"), homeTeamID: "netherlands", awayTeamID: "sweden", date: .worldCupDate("2026-06-20T17:00:00Z"), stadium: "NRG Stadium", city: "Houston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 34, stage: "Group Stage", group: .some("E"), homeTeamID: "germany", awayTeamID: "ivory coast", date: .worldCupDate("2026-06-20T20:00:00Z"), stadium: "BMO Field", city: "Toronto", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 35, stage: "Group Stage", group: .some("E"), homeTeamID: "ecuador", awayTeamID: "curaçao", date: .worldCupDate("2026-06-21T00:00:00Z"), stadium: "GEHA Field at Arrowhead Stadium", city: "Kansas City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 36, stage: "Group Stage", group: .some("F"), homeTeamID: "tunisia", awayTeamID: "japan", date: .worldCupDate("2026-06-21T04:00:00Z"), stadium: "Estadio BBVA", city: "Monterrey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 37, stage: "Group Stage", group: .some("H"), homeTeamID: "spain", awayTeamID: "saudi arabia", date: .worldCupDate("2026-06-21T16:00:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 38, stage: "Group Stage", group: .some("G"), homeTeamID: "belgium", awayTeamID: "iran", date: .worldCupDate("2026-06-21T19:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 39, stage: "Group Stage", group: .some("H"), homeTeamID: "uruguay", awayTeamID: "cape verde", date: .worldCupDate("2026-06-21T22:00:00Z"), stadium: "Hard Rock Stadium", city: "Miami", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 40, stage: "Group Stage", group: .some("G"), homeTeamID: "new zealand", awayTeamID: "egypt", date: .worldCupDate("2026-06-22T01:00:00Z"), stadium: "BC Place", city: "Vancouver", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 41, stage: "Group Stage", group: .some("J"), homeTeamID: "argentina", awayTeamID: "austria", date: .worldCupDate("2026-06-22T17:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 42, stage: "Group Stage", group: .some("I"), homeTeamID: "france", awayTeamID: "iraq", date: .worldCupDate("2026-06-22T21:00:00Z"), stadium: "Lincoln Financial Field", city: "Philadelphia", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 43, stage: "Group Stage", group: .some("I"), homeTeamID: "norway", awayTeamID: "senegal", date: .worldCupDate("2026-06-23T00:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 44, stage: "Group Stage", group: .some("J"), homeTeamID: "jordan", awayTeamID: "algeria", date: .worldCupDate("2026-06-23T03:00:00Z"), stadium: "Levi's Stadium", city: "San Francisco Bay Area", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 45, stage: "Group Stage", group: .some("K"), homeTeamID: "portugal", awayTeamID: "uzbekistan", date: .worldCupDate("2026-06-23T17:00:00Z"), stadium: "NRG Stadium", city: "Houston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 46, stage: "Group Stage", group: .some("L"), homeTeamID: "england", awayTeamID: "ghana", date: .worldCupDate("2026-06-23T20:00:00Z"), stadium: "Gillette Stadium", city: "Boston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 47, stage: "Group Stage", group: .some("L"), homeTeamID: "panama", awayTeamID: "croatia", date: .worldCupDate("2026-06-23T23:00:00Z"), stadium: "BMO Field", city: "Toronto", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 48, stage: "Group Stage", group: .some("K"), homeTeamID: "colombia", awayTeamID: "dr congo", date: .worldCupDate("2026-06-24T02:00:00Z"), stadium: "Estadio Akron", city: "Guadalajara", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 49, stage: "Group Stage", group: .some("B"), homeTeamID: "switzerland", awayTeamID: "canada", date: .worldCupDate("2026-06-24T19:00:00Z"), stadium: "BC Place", city: "Vancouver", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 50, stage: "Group Stage", group: .some("B"), homeTeamID: "bosnia & herzegovina", awayTeamID: "qatar", date: .worldCupDate("2026-06-24T19:00:00Z"), stadium: "Lumen Field", city: "Seattle", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 51, stage: "Group Stage", group: .some("C"), homeTeamID: "scotland", awayTeamID: "brazil", date: .worldCupDate("2026-06-24T22:00:00Z"), stadium: "Hard Rock Stadium", city: "Miami", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 52, stage: "Group Stage", group: .some("C"), homeTeamID: "morocco", awayTeamID: "haiti", date: .worldCupDate("2026-06-24T22:00:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 53, stage: "Group Stage", group: .some("A"), homeTeamID: "czech republic", awayTeamID: "mexico", date: .worldCupDate("2026-06-25T01:00:00Z"), stadium: "Estadio Azteca", city: "Mexico City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 54, stage: "Group Stage", group: .some("A"), homeTeamID: "south africa", awayTeamID: "south korea", date: .worldCupDate("2026-06-25T01:00:00Z"), stadium: "Estadio BBVA", city: "Monterrey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 55, stage: "Group Stage", group: .some("E"), homeTeamID: "curaçao", awayTeamID: "ivory coast", date: .worldCupDate("2026-06-25T20:00:00Z"), stadium: "Lincoln Financial Field", city: "Philadelphia", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 56, stage: "Group Stage", group: .some("E"), homeTeamID: "ecuador", awayTeamID: "germany", date: .worldCupDate("2026-06-25T20:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 57, stage: "Group Stage", group: .some("F"), homeTeamID: "japan", awayTeamID: "sweden", date: .worldCupDate("2026-06-25T23:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 58, stage: "Group Stage", group: .some("F"), homeTeamID: "tunisia", awayTeamID: "netherlands", date: .worldCupDate("2026-06-25T23:00:00Z"), stadium: "GEHA Field at Arrowhead Stadium", city: "Kansas City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 59, stage: "Group Stage", group: .some("D"), homeTeamID: "turkey", awayTeamID: "usa", date: .worldCupDate("2026-06-26T02:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 60, stage: "Group Stage", group: .some("D"), homeTeamID: "paraguay", awayTeamID: "australia", date: .worldCupDate("2026-06-26T02:00:00Z"), stadium: "Levi's Stadium", city: "San Francisco Bay Area", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 61, stage: "Group Stage", group: .some("I"), homeTeamID: "norway", awayTeamID: "france", date: .worldCupDate("2026-06-26T19:00:00Z"), stadium: "Gillette Stadium", city: "Boston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 62, stage: "Group Stage", group: .some("I"), homeTeamID: "senegal", awayTeamID: "iraq", date: .worldCupDate("2026-06-26T19:00:00Z"), stadium: "BMO Field", city: "Toronto", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 63, stage: "Group Stage", group: .some("H"), homeTeamID: "cape verde", awayTeamID: "saudi arabia", date: .worldCupDate("2026-06-27T00:00:00Z"), stadium: "NRG Stadium", city: "Houston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 64, stage: "Group Stage", group: .some("H"), homeTeamID: "uruguay", awayTeamID: "spain", date: .worldCupDate("2026-06-27T00:00:00Z"), stadium: "Estadio Akron", city: "Guadalajara", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 65, stage: "Group Stage", group: .some("G"), homeTeamID: "egypt", awayTeamID: "iran", date: .worldCupDate("2026-06-27T03:00:00Z"), stadium: "Lumen Field", city: "Seattle", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 66, stage: "Group Stage", group: .some("G"), homeTeamID: "new zealand", awayTeamID: "belgium", date: .worldCupDate("2026-06-27T03:00:00Z"), stadium: "BC Place", city: "Vancouver", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 67, stage: "Group Stage", group: .some("L"), homeTeamID: "panama", awayTeamID: "england", date: .worldCupDate("2026-06-27T21:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 68, stage: "Group Stage", group: .some("L"), homeTeamID: "croatia", awayTeamID: "ghana", date: .worldCupDate("2026-06-27T21:00:00Z"), stadium: "Lincoln Financial Field", city: "Philadelphia", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 69, stage: "Group Stage", group: .some("K"), homeTeamID: "colombia", awayTeamID: "portugal", date: .worldCupDate("2026-06-27T23:30:00Z"), stadium: "Hard Rock Stadium", city: "Miami", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 70, stage: "Group Stage", group: .some("K"), homeTeamID: "dr congo", awayTeamID: "uzbekistan", date: .worldCupDate("2026-06-27T23:30:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 71, stage: "Group Stage", group: .some("J"), homeTeamID: "algeria", awayTeamID: "austria", date: .worldCupDate("2026-06-28T02:00:00Z"), stadium: "GEHA Field at Arrowhead Stadium", city: "Kansas City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 72, stage: "Group Stage", group: .some("J"), homeTeamID: "jordan", awayTeamID: "argentina", date: .worldCupDate("2026-06-28T02:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 73, stage: "Round of 32", group: nil, homeTeamID: "2a", awayTeamID: "2b", date: .worldCupDate("2026-06-28T19:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 74, stage: "Round of 32", group: nil, homeTeamID: "1c", awayTeamID: "2f", date: .worldCupDate("2026-06-29T17:00:00Z"), stadium: "NRG Stadium", city: "Houston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 75, stage: "Round of 32", group: nil, homeTeamID: "1e", awayTeamID: "3a/b/c/d/f", date: .worldCupDate("2026-06-29T20:30:00Z"), stadium: "Gillette Stadium", city: "Boston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 76, stage: "Round of 32", group: nil, homeTeamID: "1f", awayTeamID: "2c", date: .worldCupDate("2026-06-30T01:00:00Z"), stadium: "Estadio BBVA", city: "Monterrey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 77, stage: "Round of 32", group: nil, homeTeamID: "2e", awayTeamID: "2i", date: .worldCupDate("2026-06-30T17:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 78, stage: "Round of 32", group: nil, homeTeamID: "1i", awayTeamID: "3c/d/f/g/h", date: .worldCupDate("2026-06-30T21:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 79, stage: "Round of 32", group: nil, homeTeamID: "1a", awayTeamID: "3c/e/f/h/i", date: .worldCupDate("2026-07-01T01:00:00Z"), stadium: "Estadio Azteca", city: "Mexico City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 80, stage: "Round of 32", group: nil, homeTeamID: "1l", awayTeamID: "3e/h/i/j/k", date: .worldCupDate("2026-07-01T16:00:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 81, stage: "Round of 32", group: nil, homeTeamID: "1g", awayTeamID: "3a/e/h/i/j", date: .worldCupDate("2026-07-01T20:00:00Z"), stadium: "Lumen Field", city: "Seattle", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 82, stage: "Round of 32", group: nil, homeTeamID: "1d", awayTeamID: "3b/e/f/i/j", date: .worldCupDate("2026-07-02T00:00:00Z"), stadium: "Levi's Stadium", city: "San Francisco Bay Area", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 83, stage: "Round of 32", group: nil, homeTeamID: "1h", awayTeamID: "2j", date: .worldCupDate("2026-07-02T19:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 84, stage: "Round of 32", group: nil, homeTeamID: "2k", awayTeamID: "2l", date: .worldCupDate("2026-07-02T23:00:00Z"), stadium: "BMO Field", city: "Toronto", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 85, stage: "Round of 32", group: nil, homeTeamID: "1b", awayTeamID: "3e/f/g/i/j", date: .worldCupDate("2026-07-03T03:00:00Z"), stadium: "BC Place", city: "Vancouver", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 86, stage: "Round of 32", group: nil, homeTeamID: "2d", awayTeamID: "2g", date: .worldCupDate("2026-07-03T18:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 87, stage: "Round of 32", group: nil, homeTeamID: "1j", awayTeamID: "2h", date: .worldCupDate("2026-07-03T22:00:00Z"), stadium: "Hard Rock Stadium", city: "Miami", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 88, stage: "Round of 32", group: nil, homeTeamID: "1k", awayTeamID: "3d/e/i/j/l", date: .worldCupDate("2026-07-04T01:30:00Z"), stadium: "GEHA Field at Arrowhead Stadium", city: "Kansas City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 89, stage: "Round of 16", group: nil, homeTeamID: "w73", awayTeamID: "w75", date: .worldCupDate("2026-07-04T17:00:00Z"), stadium: "NRG Stadium", city: "Houston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 90, stage: "Round of 16", group: nil, homeTeamID: "w74", awayTeamID: "w77", date: .worldCupDate("2026-07-04T21:00:00Z"), stadium: "Lincoln Financial Field", city: "Philadelphia", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 91, stage: "Round of 16", group: nil, homeTeamID: "w76", awayTeamID: "w78", date: .worldCupDate("2026-07-05T20:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 92, stage: "Round of 16", group: nil, homeTeamID: "w79", awayTeamID: "w80", date: .worldCupDate("2026-07-06T00:00:00Z"), stadium: "Estadio Azteca", city: "Mexico City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 93, stage: "Round of 16", group: nil, homeTeamID: "w83", awayTeamID: "w84", date: .worldCupDate("2026-07-06T19:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 94, stage: "Round of 16", group: nil, homeTeamID: "w81", awayTeamID: "w82", date: .worldCupDate("2026-07-07T00:00:00Z"), stadium: "Lumen Field", city: "Seattle", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 95, stage: "Round of 16", group: nil, homeTeamID: "w86", awayTeamID: "w88", date: .worldCupDate("2026-07-07T16:00:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 96, stage: "Round of 16", group: nil, homeTeamID: "w85", awayTeamID: "w87", date: .worldCupDate("2026-07-07T20:00:00Z"), stadium: "BC Place", city: "Vancouver", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 97, stage: "Quarter-final", group: nil, homeTeamID: "w89", awayTeamID: "w90", date: .worldCupDate("2026-07-09T20:00:00Z"), stadium: "Gillette Stadium", city: "Boston", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 98, stage: "Quarter-final", group: nil, homeTeamID: "w93", awayTeamID: "w94", date: .worldCupDate("2026-07-10T19:00:00Z"), stadium: "SoFi Stadium", city: "Los Angeles", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 99, stage: "Quarter-final", group: nil, homeTeamID: "w91", awayTeamID: "w92", date: .worldCupDate("2026-07-11T21:00:00Z"), stadium: "Hard Rock Stadium", city: "Miami", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 100, stage: "Quarter-final", group: nil, homeTeamID: "w95", awayTeamID: "w96", date: .worldCupDate("2026-07-12T01:00:00Z"), stadium: "GEHA Field at Arrowhead Stadium", city: "Kansas City", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 101, stage: "Semi-final", group: nil, homeTeamID: "w97", awayTeamID: "w98", date: .worldCupDate("2026-07-14T19:00:00Z"), stadium: "AT&T Stadium", city: "Dallas", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 102, stage: "Semi-final", group: nil, homeTeamID: "w99", awayTeamID: "w100", date: .worldCupDate("2026-07-15T19:00:00Z"), stadium: "Mercedes-Benz Stadium", city: "Atlanta", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 103, stage: "Third-place play-off", group: nil, homeTeamID: "l101", awayTeamID: "l102", date: .worldCupDate("2026-07-18T21:00:00Z"), stadium: "Hard Rock Stadium", city: "Miami", status: .scheduled, homeScore: nil, awayScore: nil),
        Fixture(id: 104, stage: "Final", group: nil, homeTeamID: "w101", awayTeamID: "w102", date: .worldCupDate("2026-07-19T19:00:00Z"), stadium: "MetLife Stadium", city: "New York/New Jersey", status: .scheduled, homeScore: nil, awayScore: nil)
    ]

    static let standings: [Standing] = teams.map {
        Standing(teamID: $0.id, played: 0, won: 0, drawn: 0, lost: 0, goalsFor: 0, goalsAgainst: 0)
    }

    static let squadsByTeamID: [String: [SquadPlayer]] = [
        "usa": [
            SquadPlayer(number: 1, name: "Matt Turner", position: "Goalkeeper", club: "New England Revolution"),
            SquadPlayer(number: 2, name: "Sergino Dest", position: "Defender", club: "PSV Eindhoven"),
            SquadPlayer(number: 3, name: "Chris Richards", position: "Defender", club: "Crystal Palace"),
            SquadPlayer(number: 4, name: "Tyler Adams", position: "Midfielder", club: "AFC Bournemouth"),
            SquadPlayer(number: 5, name: "Antonee Robinson", position: "Defender", club: "Fulham FC"),
            SquadPlayer(number: 6, name: "Auston Trusty", position: "Defender", club: "Celtic FC"),
            SquadPlayer(number: 7, name: "Gio Reyna", position: "Midfielder", club: "Borussia Monchengladbach"),
            SquadPlayer(number: 8, name: "Weston McKennie", position: "Midfielder", club: "Juventus"),
            SquadPlayer(number: 9, name: "Ricardo Pepi", position: "Forward", club: "PSV Eindhoven"),
            SquadPlayer(number: 10, name: "Christian Pulisic", position: "Forward", club: "AC Milan"),
            SquadPlayer(number: 11, name: "Brenden Aaronson", position: "Forward", club: "Leeds United"),
            SquadPlayer(number: 12, name: "Miles Robinson", position: "Defender", club: "FC Cincinnati"),
            SquadPlayer(number: 13, name: "Tim Ream", position: "Defender", club: "Charlotte FC"),
            SquadPlayer(number: 14, name: "Sebastian Berhalter", position: "Midfielder", club: "Vancouver Whitecaps FC"),
            SquadPlayer(number: 15, name: "Cristian Roldan", position: "Midfielder", club: "Seattle Sounders FC"),
            SquadPlayer(number: 16, name: "Alex Freeman", position: "Defender", club: "Villarreal CF"),
            SquadPlayer(number: 17, name: "Malik Tillman", position: "Midfielder", club: "Bayer Leverkusen"),
            SquadPlayer(number: 18, name: "Max Arfsten", position: "Defender", club: "Columbus Crew"),
            SquadPlayer(number: 19, name: "Haji Wright", position: "Forward", club: "Coventry City"),
            SquadPlayer(number: 20, name: "Folarin Balogun", position: "Forward", club: "AS Monaco"),
            SquadPlayer(number: 21, name: "Timothy Weah", position: "Forward", club: "Olympique Marseille"),
            SquadPlayer(number: 22, name: "Mark McKenzie", position: "Defender", club: "Toulouse"),
            SquadPlayer(number: 23, name: "Joe Scally", position: "Defender", club: "Borussia Monchengladbach"),
            SquadPlayer(number: 24, name: "Matt Freese", position: "Goalkeeper", club: "New York City FC"),
            SquadPlayer(number: 25, name: "Chris Brady", position: "Goalkeeper", club: "Chicago Fire FC"),
            SquadPlayer(number: 26, name: "Alejandro Zendejas", position: "Forward", club: "Club America")
        ]
    ]

    static func upcomingFixtures(from date: Date = .now, limit: Int) -> [Fixture] {
        let upcoming = fixtures
            .filter { $0.date >= date }
            .sorted { $0.date < $1.date }

        if upcoming.isEmpty {
            return Array(fixtures.sorted { $0.date > $1.date }.prefix(limit))
        }

        return Array(upcoming.prefix(limit))
    }

    static func nextFixture(from date: Date = .now) -> Fixture {
        upcomingFixtures(from: date, limit: 1).first ?? fixtures[0]
    }

    static func fixtures(at stadium: String) -> [Fixture] {
        fixtures
            .filter { $0.stadium == stadium }
            .sorted { $0.date < $1.date }
    }

    static func squad(for teamID: String) -> [SquadPlayer] {
        squadsByTeamID[teamID] ?? []
    }

    static func teamName(_ id: String) -> String {
        if let team = teams.first(where: { $0.id == id }) {
            return team.name
        }
        return id.uppercased().replacingOccurrences(of: "-", with: " ")
    }
}
