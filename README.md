# 🌤️ SwiftUI API Example — Open-Meteo

A SwiftUI weather app that fetches real forecast data from the Open-Meteo API — demonstrating async/await networking, JSON decoding, and displaying live API data in a SwiftUI view. No API key required.

---

## 🤔 What this is

This project uses the free [Open-Meteo](https://open-meteo.com/) weather API to fetch current temperature and forecast data, decode it with `Codable`, and display it in SwiftUI. It's a clean real-world example of the full networking cycle: URL construction, async data fetch, JSON decoding, and UI rendering with loading/error states.

## ✅ Why you'd use it

- **Open-Meteo API** — free, no-key weather API with hourly and daily forecasts
- **async/await + URLSession** — modern Swift concurrency for network requests
- **Codable decoding** — maps nested JSON response into Swift structs
- **Loading & error states** — handles in-flight, success, and failure cases in SwiftUI
- **No API key** — runs out of the box with no account setup

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/hvjqUuhmNZQ)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@noahdoescoding).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SwiftUIAPIExampleOpen-Meteo.git
cd SwiftUIAPIExampleOpen-Meteo
```

### 2. Open in Xcode
- Double-click `APIExampleOpen-Meteo.xcodeproj`

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier (e.g., `com.yourname.OpenMeteo`).

---

## 🛠️ Notes

- The Open-Meteo API is free and requires no authentication.
- Default coordinates are hardcoded — update latitude/longitude in the fetch call to change location.
- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 16+
- Xcode 15+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/hvjqUuhmNZQ)
