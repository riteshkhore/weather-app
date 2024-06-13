//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ritesh Khore on 13/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint:.topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 6) {
                Text("Pune, MH").bold().font(.system(size: 32, weight: .bold, design: .default)).foregroundColor(.white).padding(50)
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .symbolRenderingMode(.multicolor).resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    Text("75°").font(.system(size: 70, weight: .bold)).foregroundColor(.white)
                }
                
                Spacer()
                
                HStack(spacing:20) {
                    DayWeather(dayOfWeek: "Tue", temperature: 34, iconName: "wind")
                    
                    DayWeather(dayOfWeek: "Wed", temperature: 44, iconName: "sun.max.fill")
                    
                    DayWeather(dayOfWeek: "Thur", temperature: 28, iconName: "cloud.rain.fill")
                    
                    DayWeather(dayOfWeek: "Fri", temperature: 36, iconName: "sun.horizon.fill")
                    
                    DayWeather(dayOfWeek: "Sat", temperature: 42, iconName: "cloud.snow.fill")
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
