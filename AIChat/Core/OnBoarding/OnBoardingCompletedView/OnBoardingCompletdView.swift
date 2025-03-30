//
//  OnBoardingCompletdView.swift
//  AIChat
//
//  Created by Kiran K on 31/03/25.
//

import SwiftUI

struct OnBoardingCompletdView: View {
    @Environment(AppState.self) private var appState
    var body: some View {
        VStack {
            Text("OnBoarding completed")
                .frame(maxHeight: .infinity)
            Button {
                onFinshPressed()
            } label: {
                Text("Finished")
                    .callToAction()
            }

        }
        .padding(16)
    }
    
    private func onFinshPressed() {
        appState.updateAppState(showTabbar: true)
    }
}

#Preview {
    OnBoardingCompletdView()
        .environment(AppState())
}
