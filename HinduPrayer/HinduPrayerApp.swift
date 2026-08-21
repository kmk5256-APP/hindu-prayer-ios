import SwiftUI

@main
struct HinduPrayerApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(nil) // follow system
        }
    }
}
