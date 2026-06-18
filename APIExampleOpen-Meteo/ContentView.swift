//  Created by Noah Carpenter
   //  🐱 Follow me on YouTube! 🎥
   //  https://www.youtube.com/@noahdoescoding
   //  Like and Subscribe for coding tutorials and fun! 💻✨
   //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
   //  Dream Big, Code Bigger

import SwiftUI

struct WeatherData: Codable{
    let current: CurrentWeather
}

struct CurrentWeather: Codable {
    let temperature_2m: Double
    let wind_speed_10m: Double
}

struct ContentView: View {
    @State private var temperature: Double?
    @State private var windSpeed: Double?
    
    var body: some View {
        NavigationView{
            VStack {
             Text("Current Weather")
                    .font(.largeTitle)
                    .padding()
                
                if let temperature = temperature {
                    Text("Temperature: \(temperature) C")
                        .font(.title2)
                }
                if let windSpeed = windSpeed {
                    Text("Wind Speed \(windSpeed) km/h")
                }
            }
            .padding()
            .task {
                await fetchWeather()
            }
            .navigationTitle("Weather")
        }
    
    }
    func fetchWeather() async {
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,wind_speed_10m&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m"
        guard let url = URL(string: urlString) else {return}
        
        do{
            let(data, _) = try await URLSession.shared.data(from: url)
            let decodedData = try JSONDecoder().decode(WeatherData.self, from: data)
            DispatchQueue.main.async {
                self.temperature = decodedData.current.temperature_2m
                self.windSpeed = decodedData.current.wind_speed_10m
            }
            
        } catch {
            print("error fetching weather data \(error)")
        }
    }
}
    

#Preview {
    ContentView()
}
