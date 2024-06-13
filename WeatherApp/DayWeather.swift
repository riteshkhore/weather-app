//
//  DayWeather.swift
//  WeatherApp
//
//  Created by Ritesh Khore on 13/06/24.
//

import SwiftUI

struct DayWeather: View {
    var dayOfWeek: String
    var temperature: Int
    var iconName: String
    
    var body: some View {
        VStack(spacing: 8) {
            Text(dayOfWeek).foregroundColor(.white).font(.system(size: 16, weight: .medium))
            
            Image(systemName: iconName)
                .symbolRenderingMode(.multicolor).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 34, height: 34)
            
            Text("\(temperature)°").font(.system(size: 32, weight: .bold)).foregroundColor(.white)
        }
    }
}

#Preview {
    DayWeather(dayOfWeek: "Mon", temperature: 30, iconName: "wind")
}
