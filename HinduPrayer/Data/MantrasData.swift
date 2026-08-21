import Foundation

let allMantras: [Mantra] = [
    Mantra(
        id: "gayatri",
        title: "Gayatri Mantra",
        sanskrit: "\u{0950} \u{092d}\u{0942}\u{0930}\u{094d}\u{092d}\u{0941}\u{0935}\u{0903} \u{0938}\u{094d}\u{0935}\u{0903} \u{0924}\u{0924}\u{094d} \u{0938}\u{0935}\u{093f}\u{0924}\u{0941}\u{0930}\u{094d}\u{0935}\u{0930}\u{0947}\u{0923}\u{094d}\u{092f}\u{0902}\n\u{092d}\u{0930}\u{094d}\u{0917}\u{094b} \u{0926}\u{0947}\u{0935}\u{0938}\u{094d}\u{092f} \u{0927}\u{0940}\u{092e}\u{0939}\u{093f} \u{0927}\u{093f}\u{092f}\u{094b} \u{092f}\u{094b} \u{0928}\u{0903} \u{092a}\u{094d}\u{0930}\u{091a}\u{094b}\u{0926}\u{092f}\u{093e}\u{0924}\u{094d}",
        transliteration: "Om Bhur Bhuvah Swah Tat Savitur Varenyam\nBhargo Devasya Dhimahi Dhiyo Yo Nah Prachodayat",
        meaning: "We meditate on the glory of the Creator who has created the Universe, who is worthy of Worship, who is the embodiment of Knowledge and Light, who is the remover of all sins and ignorance. May He enlighten our intellect.",
        category: "Daily",
        deity: "Savitr / Surya"
    ),
    Mantra(
        id: "mahamrityunjaya",
        title: "Mahamrityunjaya Mantra",
        sanskrit: "\u{0950} \u{0924}\u{094d}\u{0930}\u{094d}\u{092f}\u{092e}\u{094d}\u{092c}\u{0915}\u{0902} \u{092f}\u{091c}\u{093e}\u{092e}\u{0939}\u{0947} \u{0938}\u{0941}\u{0917}\u{0928}\u{094d}\u{0927}\u{093f}\u{092e}\u{094d} \u{092a}\u{0941}\u{0937}\u{094d}\u{091f}\u{093f}\u{0935}\u{0930}\u{094d}\u{0927}\u{0928}\u{092e}\u{094d}\n\u{0909}\u{0930}\u{094d}\u{0935}\u{093e}\u{0930}\u{0941}\u{0915}\u{092e}\u{093f}\u{0935} \u{092c}\u{0928}\u{094d}\u{0927}\u{0928}\u{093e}\u{0928}\u{094d}\u{092e}\u{0943}\u{0924}\u{094d}\u{092f}\u{094b}\u{0930}\u{094d}\u{092e}\u{0941}\u{0915}\u{094d}\u{0937}\u{0940}\u{0935} \u{092e}\u{093e}\u{092e}\u{0943}\u{0924}\u{093e}\u{0924}\u{094d}",
        transliteration: "Om Tryambakam Yajamahe Sugandhim Pushtivardhanam\nUrvarukamiva Bandhanan Mrityor Mukshiya Maamritat",
        meaning: "We worship the three-eyed one (Lord Shiva) who is fragrant and who nourishes all beings. May He liberate us from death for the sake of immortality, just as the cucumber is severed from its bondage (to the creeper).",
        category: "Shiva",
        deity: "Shiva"
    ),
    Mantra(
        id: "om-namah-shivaya",
        title: "Om Namah Shivaya",
        sanskrit: "\u{0950} \u{0928}\u{092e}\u{0903} \u{0936}\u{093f}\u{0935}\u{093e}\u{092f}",
        transliteration: "Om Namah Shivaya",
        meaning: "I bow to Lord Shiva. The five-syllable mantra representing the five elements and the pure consciousness of Shiva.",
        category: "Shiva",
        deity: "Shiva"
    ),
    Mantra(
        id: "ganesha",
        title: "Ganesha Mantra",
        sanskrit: "\u{0950} \u{0917}\u{0902} \u{0917}\u{0923}\u{092a}\u{0924}\u{092f}\u{0947} \u{0928}\u{092e}\u{0903}",
        transliteration: "Om Gam Ganapataye Namah",
        meaning: "Salutations to Lord Ganesha, the remover of obstacles. We invoke His blessings before beginning any auspicious work.",
        category: "Ganesha",
        deity: "Ganesha"
    ),
    Mantra(
        id: "hare-krishna",
        title: "Hare Krishna Mahamantra",
        sanskrit: "\u{0939}\u{0930}\u{0947} \u{0915}\u{0943}\u{0937}\u{094d}\u{0923} \u{0939}\u{0930}\u{0947} \u{0915}\u{0943}\u{0937}\u{094d}\u{0923}\n\u{0915}\u{0943}\u{0937}\u{094d}\u{0923} \u{0915}\u{0943}\u{0937}\u{094d}\u{0923} \u{0939}\u{0930}\u{0947} \u{0939}\u{0930}\u{0947}\n\u{0939}\u{0930}\u{0947} \u{0930}\u{093e}\u{092e} \u{0939}\u{0930}\u{0947} \u{0930}\u{093e}\u{092e}\n\u{0930}\u{093e}\u{092e} \u{0930}\u{093e}\u{092e} \u{0939}\u{0930}\u{0947} \u{0939}\u{0930}\u{0947}",
        transliteration: "Hare Krishna Hare Krishna\nKrishna Krishna Hare Hare\nHare Rama Hare Rama\nRama Rama Hare Hare",
        meaning: "The great mantra for deliverance. Chanting the holy names of Krishna and Rama cleanses the heart and brings one closer to the Divine.",
        category: "Krishna",
        deity: "Krishna"
    ),
    Mantra(
        id: "om",
        title: "Om (Pranava)",
        sanskrit: "\u{0950}",
        transliteration: "Om",
        meaning: "The primordial sound, the vibration of the universe, representing Brahman — the ultimate reality.",
        category: "Daily",
        deity: "Brahman"
    ),
    Mantra(
        id: "durga",
        title: "Durga Mantra",
        sanskrit: "\u{0950} \u{0926}\u{0941}\u{0902} \u{0926}\u{0941}\u{0930}\u{094d}\u{0917}\u{093e}\u{092f}\u{0948} \u{0928}\u{092e}\u{0903}",
        transliteration: "Om Dum Durgayei Namah",
        meaning: "Salutations to Goddess Durga, the invincible one who protects from all difficulties and negative forces.",
        category: "Durga",
        deity: "Durga"
    ),
    Mantra(
        id: "hanuman",
        title: "Hanuman Mantra",
        sanskrit: "\u{0950} \u{0939}\u{0902} \u{0939}\u{0928}\u{0941}\u{092e}\u{0924}\u{0947} \u{0928}\u{092e}\u{0903}",
        transliteration: "Om Hum Hanumate Namah",
        meaning: "Salutations to Lord Hanuman, the embodiment of strength, devotion and courage.",
        category: "Hanuman",
        deity: "Hanuman"
    ),
    Mantra(
        id: "vishnu",
        title: "Vishnu Mantra",
        sanskrit: "\u{0950} \u{0928}\u{092e}\u{094b} \u{092d}\u{0917}\u{0935}\u{0924}\u{0947} \u{0935}\u{093e}\u{0938}\u{0941}\u{0926}\u{0947}\u{0935}\u{093e}\u{092f}",
        transliteration: "Om Namo Bhagavate Vasudevaya",
        meaning: "I bow to Lord Vasudeva (Krishna/Vishnu), the Supreme Personality of Godhead who resides in all beings.",
        category: "Vishnu",
        deity: "Vishnu"
    ),
]
