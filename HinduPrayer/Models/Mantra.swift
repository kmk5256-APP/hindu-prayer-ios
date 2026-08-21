import Foundation

struct Mantra: Identifiable, Hashable {
    let id: String
    let title: String
    let sanskrit: String
    let transliteration: String
    let meaning: String
    let category: String
    let deity: String
    let recommendedCount: Int
    
    init(id: String, title: String, sanskrit: String, transliteration: String,
         meaning: String, category: String, deity: String, recommendedCount: Int = 108) {
        self.id = id
        self.title = title
        self.sanskrit = sanskrit
        self.transliteration = transliteration
        self.meaning = meaning
        self.category = category
        self.deity = deity
        self.recommendedCount = recommendedCount
    }
}
