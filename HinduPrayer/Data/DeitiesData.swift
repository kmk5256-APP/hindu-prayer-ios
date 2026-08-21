import SwiftUI

let allDeities: [Deity] = [
    Deity(
        id: "ganesha",
        name: "Lord Ganesha",
        sanskritName: "\u{0917}\u{0923}\u{0947}\u{0936}",
        description: "The remover of obstacles, lord of beginnings, wisdom and intellect. Worshipped first in all auspicious ceremonies.",
        icon: "sparkles",
        color: AppTheme.saffron,
        mantraIds: ["ganesha"],
        aarti: """
        \u{091c}\u{092f} \u{0917}\u{0923}\u{0947}\u{0936} \u{091c}\u{092f} \u{0917}\u{0923}\u{0947}\u{0936} \u{091c}\u{092f} \u{0917}\u{0923}\u{0947}\u{0936} \u{0926}\u{0947}\u{0935}\u{093e}
        \u{092e}\u{093e}\u{0924}\u{093e} \u{091c}\u{0915}\u{0940} \u{092a}\u{0930} \u{0928}\u{0942}\u{0930} \u{0915}\u{0948}\u{0938}\u{0947} \u{0915}\u{0935}\u{093f} \u{0938}\u{0941}\u{0916} \u{091c}\u{0940}\u{0935}\u{0928} \u{092a}\u{093e}\u{0935}\u{0947}
        """
    ),
    Deity(
        id: "shiva",
        name: "Lord Shiva",
        sanskritName: "\u{0936}\u{093f}\u{0935}",
        description: "The Auspicious One, the Destroyer and Transformer. Lord of Yoga, meditation and the cosmic dance (Tandava).",
        icon: "moon.stars.fill",
        color: Color(red: 0.29, green: 0.08, blue: 0.55),
        mantraIds: ["om-namah-shivaya", "mahamrityunjaya"],
        aarti: """
        \u{091c}\u{092f} \u{0936}\u{093f}\u{0935} \u{0913}\u{0902}\u{0915}\u{093e}\u{0930}\u{093e} \u{0939}\u{0930} \u{0939}\u{0930} \u{092d}\u{094b}\u{0932}\u{0947}\u{0928}\u{093e}\u{0925}
        \u{091c}\u{092f} \u{0917}\u{093f}\u{0930}\u{093f}\u{091c}\u{093e} \u{092a}\u{0930}\u{0935}\u{0924}\u{0940} \u{092e}\u{0902}\u{0917}\u{0932} \u{092e}\u{0930}\u{094d}\u{0926}\u{0928} \u{092e}\u{0947}\u{0902} \u{092c}\u{094b}\u{0932}\u{0947}\u{0928}\u{093e}\u{0925}
        """
    ),
    Deity(
        id: "vishnu",
        name: "Lord Vishnu",
        sanskritName: "\u{0935}\u{093f}\u{0937}\u{094d}\u{0923}\u{0941}",
        description: "The Preserver of the Universe. The supreme being who maintains cosmic order (Dharma).",
        icon: "drop.fill",
        color: Color(red: 0.08, green: 0.4, blue: 0.75),
        mantraIds: ["vishnu"],
        aarti: """
        \u{0913}\u{092e} \u{091c}\u{092f} \u{091c}\u{0917}\u{0926}\u{0940}\u{0936} \u{0939}\u{0930}\u{0947}
        \u{0938}\u{094d}\u{0935}\u{093e}\u{092e}\u{0940} \u{091c}\u{092f} \u{091c}\u{0917}\u{0926}\u{0940}\u{0936} \u{0939}\u{0930}\u{0947}
        """
    ),
    Deity(
        id: "krishna",
        name: "Lord Krishna",
        sanskritName: "\u{0915}\u{0943}\u{0937}\u{094d}\u{0923}",
        description: "The Supreme Personality of Godhead, the teacher of the Bhagavad Gita, the embodiment of divine love and joy.",
        icon: "leaf.fill",
        color: Color(red: 0.18, green: 0.49, blue: 0.2),
        mantraIds: ["hare-krishna", "vishnu"],
        aarti: """
        \u{0906}\u{0930}\u{0924}\u{0940} \u{0915}\u{0941}\u{0902}\u{091c}\u{092c}\u{093f}\u{0939}\u{093e}\u{0930}\u{0940} \u{0915}\u{0940}
        \u{0936}\u{094d}\u{0930}\u{0940} \u{0917}\u{093f}\u{0930}\u{0927}\u{0930} \u{0915}\u{0940}
        """
    ),
    Deity(
        id: "durga",
        name: "Goddess Durga",
        sanskritName: "\u{0926}\u{0941}\u{0930}\u{094d}\u{0917}\u{093e}",
        description: "The invincible Mother Goddess, protector of dharma, destroyer of evil, and source of all strength (Shakti).",
        icon: "crown.fill",
        color: Color(red: 0.78, green: 0.16, blue: 0.16),
        mantraIds: ["durga"],
        aarti: """
        \u{091c}\u{092f} \u{0905}\u{092e}\u{094d}\u{092c}\u{0947} \u{0917}\u{094c}\u{0930}\u{0940} \u{092e}\u{093e}\u{0902}
        \u{091c}\u{092f} \u{0915}\u{0943}\u{0937}\u{094d}\u{0923} \u{0915}\u{0932}\u{094d}\u{092f}\u{093e}\u{0923}\u{0940} \u{092e}\u{093e}\u{0902}
        """
    ),
    Deity(
        id: "hanuman",
        name: "Lord Hanuman",
        sanskritName: "\u{0939}\u{0928}\u{0941}\u{092e}\u{093e}\u{0928}",
        description: "The greatest devotee of Lord Rama, symbol of strength, courage, loyalty and selfless service.",
        icon: "figure.strengthtraining.traditional",
        color: AppTheme.deepSaffron,
        mantraIds: ["hanuman"],
        aarti: """
        \u{0906}\u{0930}\u{0924}\u{0940} \u{0915}\u{0940}\u{091c}\u{0940}\u{090f} \u{0939}\u{0928}\u{0941}\u{092e}\u{093e}\u{0928} \u{0932}\u{0932}\u{093e} \u{0915}\u{0940}
        \u{0915}\u{0943}\u{0937}\u{094d}\u{0923}\u{0941} \u{091c}\u{0940} \u{0936}\u{0930}\u{0923} \u{0938}\u{0941}\u{092e}\u{093f}\u{0930}\u{094b} \u{092a}\u{0935}\u{0928} \u{0915}\u{0940}
        """
    ),
]
