//
//  TabbarView.swift
//  AIChat
//
//  Created by Kiran K on 30/03/25.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "eyes")
                }
            ChatsView()
                .tabItem {
                    Label("Chats", systemImage: "message")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TabbarView()
}
