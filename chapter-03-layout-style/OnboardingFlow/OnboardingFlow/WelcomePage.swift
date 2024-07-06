//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by José Carlos García on 05/07/24.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .fontDesign(.monospaced)
                .padding(.top)
            
            Text("Developing Software and Apps in Swift 6.0")
                .font(.subheadline)
                .fontWeight(.medium)
                .fontDesign(.monospaced)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
