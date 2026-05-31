# World Football Tracker - App Management Notes

## Key Links

- TestFlight public link: https://testflight.apple.com/join/cJBzEJKQ
- GitHub app branch: https://github.com/seanbray-bit/seanbray-bit.github.io/tree/world-football-tracker-app
- Privacy policy / support website: https://seanbray-bit.github.io/

## Current App Details

- App name: World Football Tracker
- Bundle ID: `com.sean.WorldCup`
- Version: `1.0`
- Build: `1`
- Platform: iOS
- Minimum iOS version: iOS 18.0
- Category: Sports
- App Store Connect app ID: `6774665866`
- Uploaded build delivery ID: `b76b23a8-ce5b-456c-93fb-e1cda593a746`

## What GitHub Does

GitHub keeps the app project organised, backed up, and versioned.

GitHub can store:

- App source code
- Xcode project files
- App Store Connect notes
- Update notes
- Screenshots
- TestFlight QR code
- TestFlight PDF guide
- Instagram Story poster files

GitHub helps with:

- Tracking every update
- Restoring older versions if something breaks
- Keeping release notes tidy
- Sharing the project with someone else later
- Making future app changes easier to manage

## Important: GitHub Does Not Update App Store Connect Instantly

Changes pushed to GitHub do not automatically appear in App Store Connect or TestFlight.

For app feature or design changes, the flow is:

1. Update the app code.
2. Increase the build number.
3. Build the app in Xcode.
4. Upload the new build to App Store Connect.
5. Wait for Apple to process the build.
6. Select the new build in TestFlight or App Store review.

GitHub is the project backup and history. App Store Connect only changes when a new build or new metadata is uploaded/entered there.

## What Can Be Updated Directly In App Store Connect

These can be changed in App Store Connect without changing the app code:

- App description
- Promotional text
- Keywords
- Screenshots
- TestFlight beta description
- What to test
- Review notes
- Privacy answers
- Support URL
- Marketing URL

## What Needs A New App Build

These need a new build uploaded from Xcode:

- New app features
- App design changes
- Fixture screen changes
- Groups screen changes
- Teams screen changes
- Calendar or Reminder behavior changes
- App icon changes
- App name inside the app
- Bug fixes in the app itself

## Current TestFlight Information

### Beta App Description

World Football Tracker is an unofficial tournament companion for following the 2026 football competition. Browse fixtures, groups, teams, venues, match times, and knockout rounds, then add selected fixtures to Calendar or Reminders.

This app is not affiliated with FIFA or the tournament organisers.

### What To Test

- Browse fixtures, groups, teams, venues, and knockout rounds.
- Check match times and details are readable.
- Add a fixture to Calendar.
- Create a Reminder for a fixture.
- Confirm the app works cleanly after closing and reopening.
- Testers can request extra teams, fixture details, alerts, or improvements through TestFlight feedback.

## Current App Store Description

World Football Tracker is an unofficial tournament companion for following the 2026 football competition.

Browse fixtures, groups, teams, venues, match times, and knockout rounds in one simple iPhone app. Open match cards for key details, track group-stage teams, and add selected fixtures to Calendar or Reminders so you do not miss the matches you care about.

Features:

- Fixture list with match times, stages, teams, venues, and status fields
- Group tables for all 12 groups
- Team list with squad-note and manager fields ready for updates
- Tournament guide covering the format and app features
- Calendar events and Reminders for selected fixtures

World Football Tracker is independent and is not affiliated with FIFA, the World Cup, or the tournament organisers.

## TestFlight Sharing Materials

Files created:

- `TestFlightQR/World-Football-Tracker-TestFlight-QR.png`
- `TestFlightQR/World-Football-Tracker-TestFlight-Guide.pdf`
- `TestFlightQR/World-Football-Tracker-TestFlight-Guide-Football-Style.pdf`
- `SocialMedia/World-Football-Tracker-TestFlight-Instagram-Story-Pitch-Small-Sticker.png`

Instagram Story note:

- A PNG image cannot be clickable by itself.
- To make it clickable on Instagram, add a Link Sticker.
- Link Sticker URL: https://testflight.apple.com/join/cJBzEJKQ

## Update Workflow

When making changes to the app:

1. Write down what needs changing.
2. Update the app code and assets.
3. Update `AppUpdateNotes.md`.
4. Increase the build number.
5. Test the app in Xcode or Simulator.
6. Commit the changes to Git.
7. Push the changes to GitHub.
8. Archive and upload a new build to App Store Connect.
9. Update TestFlight notes if needed.
10. Tell testers what changed.

## Future Update Notes Template

### Version 1.1 - Build 2

Date:

Added:

-

Changed:

-

Fixed:

-

Tester Notes:

-

App Store Connect Notes:

-

## Good Future Feature Ideas

- Favourite fixtures
- Match alerts
- Better team pages
- Venue details
- Knockout bracket view
- Search fixtures
- Filter by team
- Filter by group
- Extra tester feedback screen

