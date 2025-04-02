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
                ImageLoaderView()
                    .ignoresSafeArea()
                
                titleSection
                    .padding(.top, 20)
                
                callToActionButton
                    .padding(16)
                
                linksSection
            }
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 12) {
            Text("AI Chat 🤙")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("YouTube @ SwiftfulThinking")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
    
    private var callToActionButton: some View {
        VStack(spacing: 16) {
            NavigationLink {
                OnBoardingCompletdView()
            } label: {
                Text("Get started")
                    .callToAction()
            }
            
            Text("Already have an account? sign in.")
                .font(.callout)
                .underline()
                .tappableBackground()
                .onTapGesture {
                }
        }
    }
    
    private var linksSection: some View {
        HStack {
            Link(destination: URL(string: Constants.appleWebsite)!) {
                Text("Terms of service")
                    .font(.callout)
            }
            
            Circle()
                .foregroundStyle(.accent)
                .frame(width: 4, height: 4)
            
            Link(destination: URL(string: Constants.openAIWebsite)!) {
                Text("Privacy Policy")
                    .font(.callout)
                
            }
        }
    }
}

#Preview {
    WelcomeView()
}
