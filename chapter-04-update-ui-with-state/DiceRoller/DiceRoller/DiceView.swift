//
//  DiceView.swift
//  DiceRoller
//
//  Created by José Carlos García on 06/07/24.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPipes: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPipes).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
                .onTapGesture {
                    withAnimation {
                        numberOfPipes = Int.random(in: 1...6)
                    }
                }
//
//            Button("Roll") {
//                withAnimation {
//                    numberOfPipes = Int.random(in: 1...6)
//                }
//            }
//            .buttonStyle(.bordered)
//            .buttonBorderShape(.capsule)
        }
    }
}

#Preview {
    DiceView()
}
