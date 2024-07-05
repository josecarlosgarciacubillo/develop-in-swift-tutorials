//
//  ContentView.swift
//  WeatherForecast
//
//  Created by José Carlos García on 04/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WeekForecast(
            dayRange: "Jul 1st to Jul 7th",
            summary: "Mostly raining",
            averageLow: 40,
            averageHigh: 63
        )
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                DayForecast(day: "Tue", isRainy: false, high: 90, low: 40)
                DayForecast(day: "Wed", isRainy: true, high: 60, low: 30)
                DayForecast(day: "Thu", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Fri", isRainy: false, high: 60, low: 40)
                DayForecast(day: "Sat", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Sun", isRainy: false, high: 100, low: 40)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            low < 40 ? .cyan : .blue
        } else {
            high > 80 ? .orange : .yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

struct WeekForecast: View {
    let dayRange: String
    let summary: String
    let averageLow: Int
    let averageHigh: Int
    
    var body: some View {
        HStack {
            VStack {
                Text("Range")
                    .fontWeight(.semibold)
                Text("\(dayRange)")
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
            }
            VStack {
                Text("Summary")
                    .fontWeight(.semibold)
                Text("\(summary)")
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
            }
        }
        VStack {
            Text("Avg Low: \(averageLow)")
                .fontWeight(.semibold)
            Text("Avg High: \(averageHigh)")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
