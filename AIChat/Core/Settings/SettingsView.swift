//
//  SettingsView.swift
//  AIChat
//
//  Created by Kiran K on 30/03/25.
//

import SwiftUI

struct SettingsView: View {
    @Environment(AppState.self) private var appState
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                logoutButton
            }
            .navigationTitle("Settings")
        }
    }
    
    private var logoutButton: some View {
        Button {
            onLogoutPressed()
        } label: {
            Text("Logout")
        }

    }
    
    private func onLogoutPressed() {
        dismiss()
        Task {
            try? await Task.sleep(for: .seconds(1))
            appState.updateAppState(showTabbar: false)
        }
        
    }
}

#Preview {
    SettingsView()
}
