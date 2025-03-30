//
//  AppView.swift
//  AIChat
//
//  Created by Kiran K on 30/03/25.
//

import SwiftUI

struct AppView: View {
    @State var appState: AppState = AppState()
    var body: some View {
        AppViewBuilder(
            showTabbar: appState.showTabbar,
            tabView: {
                TabbarView()
                    .transition(.move(edge: .trailing))
            },
            onBoardingView: {
                WelcomeView()
                    .transition(.move(edge: .leading))
            }
        )
        .environment(appState)
    }
}

#Preview {
    AppView(appState: AppState(showTabbar: true))
}

#Preview {
    AppView(appState: AppState(showTabbar: false))
}
