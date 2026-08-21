import SwiftUI

struct Deity: Identifiable, Hashable {
    let id: String
    let name: String
    let sanskritName: String
    let description: String
    let icon: String          // SF Symbol or emoji
    let color: Color
    let mantraIds: [String]
    let aarti: String
    
    init(id: String, name: String, sanskritName: String, description: String,
         icon: String, color: Color, mantraIds: [String], aarti: String = "") {
        self.id = id
        self.name = name
        self.sanskritName = sanskritName
        self.description = description
        self.icon = icon
        self.color = color
        self.mantraIds = mantraIds
        self.aarti = aarti
    }
}
