//
//  OnboardingIntroView.swift
//  AIChat
//
//  Created by Kiran K on 03/04/25.
//

import SwiftUI

struct OnboardingIntroView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Group {
                Text("Make your own ")
                +
                Text("avatars ")
                    .fontWeight(.semibold)
                    .foregroundStyle(.accent)
                +
                Text("and chat with them!\n\n")
                +
                Text("Have ")
                +
                Text("real conversations ")
                    .fontWeight(.semibold)
                    .foregroundStyle(.accent)
                +
                Text("with AI-generated responses.")
            }
            .font(.title3)
            .padding(16)

            Spacer()

            NavigationLink {
                // TODO: Add destination view
            } label: {
                Text("Continue")
                    .callToAction()
            }
        }
        .padding(24)
    }
}

#Preview {
    OnboardingIntroView()
}
