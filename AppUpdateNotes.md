# App Update Notes

Use this file to track app changes before each TestFlight or App Store release.

## Version 1.0 - Build 1

Date: 29 May 2026

### Added

- First TestFlight build for World Football Tracker.
- Fixtures screen.
- Groups screen.
- Teams screen.
- Tournament guide screen.
- Calendar action for selected fixtures.
- Reminder action for selected fixtures.
- App Store screenshots for 6.9-inch iPhone.
- TestFlight QR code with app logo.
- Football-style TestFlight PDF guide with clickable invite links.
- Note that more features are available on request.

### Fixed

- App name set to World Football Tracker.
- Shared Xcode scheme added for command-line builds.
- Build uploaded to App Store Connect.

### TestFlight Notes

- Browse fixtures, groups, teams, venues, and knockout rounds.
- Check match times and details are readable.
- Add a fixture to Calendar.
- Create a Reminder for a fixture.
- Confirm the app works cleanly after closing and reopening.
- Testers can request extra teams, fixture details, alerts, or improvements through TestFlight feedback.

### App Store Connect

- App Store Connect app ID: `6774665866`
- Uploaded build: version `1.0`, build `1`
- Build delivery ID: `b76b23a8-ce5b-456c-93fb-e1cda593a746`
- TestFlight public link: https://testflight.apple.com/join/cJBzEJKQ

## Version 1.0 - Build 2

Date: 31 May 2026

### Added

- Home screen countdown for the next upcoming match.
- Opening game spotlight card.
- Featured venues preview on the Home screen.
- New Venues tab.
- Venue detail pages showing all games played at each stadium.
- Guide updated with countdown, opening game, and venue explorer features.

### Changed

- Build number increased from `1` to `2` for the next TestFlight upload.

### Fixed

- No bug fixes in this build.

### Tester Notes

- Check the countdown timer updates every second.
- Confirm the app shows the correct next upcoming match.
- Open the Venues tab and check each stadium lists its matches.
- Open venue fixture cards and test Calendar/Reminder buttons.
- Check Home screen layout on smaller and larger iPhones.

### App Store Connect Notes

- Upload as version `1.0`, build `2`.
- Suggested TestFlight note: Adds a next-match countdown, opening game spotlight, and venue explorer.
- App Store Connect upload succeeded on 31 May 2026 at 19:03 local time.
- Upload status from Xcode: uploaded package is processing.

## Version 1.0 - Build 3

Date: 31 May 2026

### Added

- Real iPhone Home Screen widget using WidgetKit.
- Small widget showing the next match countdown, fixture, and kick-off time.
- Medium widget showing stage, teams, stadium, countdown, and kick-off time.
- Widget uses a football pitch-style background.

### Changed

- Build number increased from `2` to `3` because build `2` has already been uploaded to App Store Connect.

### Tester Notes

- Install build 3 from TestFlight.
- Long-press the iPhone Home Screen, tap `+`, search for World Football Tracker, and add the Next Match widget.
- Check the small and medium widget sizes.
- Confirm the widget shows the next match, countdown, venue, and kick-off time clearly.
- Tap the widget and confirm it opens the app.
- Keep checking Home, Fixtures, Groups, Teams, Venues, and Guide as before.

### App Store Connect Notes

- Upload as version `1.0`, build `3`.
- Suggested TestFlight note: Adds a real iPhone Home Screen widget for the next match countdown.
- App Store Connect upload succeeded on 31 May 2026 at 19:23 local time.
- Upload status from Xcode: uploaded package is processing.

## Version 1.0 - Build 4

Date: 31 May 2026

### Added

- Basic squad section on team detail pages.
- Simple player rows showing shirt number, name, position, and club.
- USA 26-player squad added from the official U.S. Soccer roster.
- Clear empty state for teams whose confirmed squad has not been added yet.

### Changed

- Build number increased from `3` to `4` for the squad update.

### Tester Notes

- Open the Teams tab.
- Open USA and check the Basic Squad section.
- Confirm player numbers, names, positions, and clubs are readable.
- Open other teams and check the empty squad message looks clear.
- Continue testing fixtures, venues, the Home countdown, and the Home Screen widget.

### App Store Connect Notes

- Upload as version `1.0`, build `4`.
- Suggested TestFlight note: Adds a basic squad section, starting with the USA 26-player squad.
- App Store Connect upload succeeded on 31 May 2026 at 19:43 local time.
- Upload status from Xcode: uploaded package is processing.
