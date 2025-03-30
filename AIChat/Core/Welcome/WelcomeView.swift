//
//  WelcomeView.swift
//  AIChat
//
//  Created by Kiran K on 30/03/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome there")
                    .frame(maxHeight: .infinity)
                NavigationLink {
                    OnBoardingCompletdView()
                } label: {
                    Text("Get started")
                        .callToAction()
                }

            }
            .padding(16)
        }
    }
}

#Preview {
    WelcomeView()
}
