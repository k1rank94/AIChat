//
//  ProfileView.swift
//  AIChat
//
//  Created by Kiran K on 30/03/25.
//

import SwiftUI

struct ProfileView: View {
    @State var showSettingsView: Bool = false
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingsButton
                    }
                }
        }
        .sheet(isPresented: $showSettingsView) {
            SettingsView()
        }
    }
    
    private var settingsButton: some View {
        Button {
            onSettingsButtonPressed()
        } label: {
            Image(systemName: "gear")
        }
    }
    
    private func onSettingsButtonPressed() {
        showSettingsView = true
    }
}

#Preview {
    ProfileView()
}
