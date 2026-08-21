# 🕏 Hindu Prayer — Native iOS (SwiftUI)

A pure native **SwiftUI** iOS app for Hindu prayers, mantras, aartis and digital Japa Mala.

Built with devotion for iPhone & iPad.

## Features

- Beautiful traditional saffron / maroon / gold theme + Dark Mode
- Sacred Mantras with Sanskrit, transliteration & meaning
- Interactive **Japa Mala** counter (108 beads) with haptic feedback
- Deities section (Ganesha, Shiva, Vishnu, Krishna, Durga, Hanuman)
- Fully offline
- Native iOS look & feel (SwiftUI + SF Symbols + system haptics)

## Requirements

- Xcode 15+
- iOS 17.0+
- Swift 5.9+

## How to Run

1. Clone the repo:
```bash
git clone https://github.com/kmk5256-APP/hindu-prayer-ios.git
cd hindu-prayer-ios
```

2. Open Xcode → **File → New → Project** → choose **App** (iOS)
   - Product Name: `HinduPrayer`
   - Interface: **SwiftUI**
   - Language: **Swift**
   - Uncheck Core Data / Tests if you want a clean start

3. Delete the default `ContentView.swift` and `HinduPrayerApp.swift` that Xcode created.

4. Drag the entire `HinduPrayer/` folder from this repository into your Xcode project (make sure “Copy items if needed” is checked and the target is selected).

5. Build & Run on Simulator or device (`Cmd + R`).

> Tip: You can also just open the source files and copy-paste them into a new SwiftUI project.

## Project Structure

```
HinduPrayer/
├── HinduPrayerApp.swift          # @main entry
├── Theme/
│   └── AppTheme.swift
├── Models/
│   ├── Mantra.swift
│   └── Deity.swift
├── Data/
│   ├── MantrasData.swift
│   └── DeitiesData.swift
└── Views/
    ├── HomeView.swift
    ├── MantraListView.swift
    ├── MantraDetailView.swift
    ├── JapaMalaView.swift
    ├── DeityListView.swift
    └── DeityDetailView.swift
```

## Tech

- 100% SwiftUI
- Native haptics (`UIImpactFeedbackGenerator`)
- SF Symbols + custom colors
- No third-party dependencies

## License

MIT — free for personal & community use.

---

**ॐ शान्तिः शान्तिः शान्तिः**

Made with ❤️ by [Ai2Life Technologies](https://ai2life.org)
