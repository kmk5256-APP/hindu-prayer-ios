import SwiftUI

struct AppTheme {
    // Traditional Hindu palette
    static let saffron = Color(red: 1.0, green: 0.6, blue: 0.2)
    static let deepSaffron = Color(red: 0.9, green: 0.32, blue: 0.0)
    static let maroon = Color(red: 0.545, green: 0.0, blue: 0.0)
    static let deepMaroon = Color(red: 0.36, green: 0.0, blue: 0.0)
    static let gold = Color(red: 1.0, green: 0.84, blue: 0.0)
    static let cream = Color(red: 1.0, green: 0.973, blue: 0.906)
    
    static let cardBackground = Color(.secondarySystemBackground)
}

extension Color {
    static let appSaffron = AppTheme.saffron
    static let appMaroon = AppTheme.maroon
    static let appGold = AppTheme.gold
}
