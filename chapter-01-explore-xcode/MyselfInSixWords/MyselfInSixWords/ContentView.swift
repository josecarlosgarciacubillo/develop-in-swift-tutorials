//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by José Carlos García on 02/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Apple")
                    .padding()
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
            HStack {
                Text("Software")
                    .padding()
                    .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
            HStack {
                Text("Engineer")
                    .padding()
                    .background(Color.indigo, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
            HStack {
                Text("Coffee")
                    .padding()
                    .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
            HStack {
                Text("Mac")
                    .padding()
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
            HStack {
                Text("iPhone")
                    .padding()
                    .background(Color.orange, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
