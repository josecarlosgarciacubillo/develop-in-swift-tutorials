//
//  ContentView.swift
//  DiceRoller
//
//  Created by José Carlos García on 06/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle
                    .lowercaseSmallCaps()
                )
                .foregroundStyle(.white)
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .symbolRenderingMode(.multicolor)
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(.cyan)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
