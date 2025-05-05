//
//  OnBoardingCompletedView.swift
//  AIChat
//
//  Created by Kiran K on 05/05/25.
//

import SwiftUI

struct OnBoardingCompletedView: View {
    @Environment(AppState.self) private var root
    @State private var isCompletingProfileSetup = false
    var selectedColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup complete!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)
            Text("We've set up your profile and you're ready to start chatting")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom) {
            ctaButton
        }
        .padding(24)
        .toolbar(.hidden, for: .navigationBar)
    }
    
    private var ctaButton: some View {
        Button {
            onFinishButtonPressed()
        } label: {
            ZStack {
                if isCompletingProfileSetup {
                    ProgressView()
                        .progressViewStyle(.circular)
                        .tint(.white)
                } else {
                    Text("Finish")
                }
            }
            .callToAction()
        }
        .disabled(isCompletingProfileSetup)

    }
    
    private func onFinishButtonPressed() {
        isCompletingProfileSetup = true
        Task {
            try await Task.sleep(for: .seconds(3))
            isCompletingProfileSetup = true
            root.updateAppState(showTabbar: true)
        }
    }
}

#Preview {
    OnBoardingCompletedView(selectedColor: Color.green)
        .environment(AppState())
}
