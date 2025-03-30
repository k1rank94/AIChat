//
//  AppViewBuilder.swift
//  AIChat
//
//  Created by Kiran K on 30/03/25.
//

import SwiftUI

struct AppViewBuilder<TabbarView: View, OnBoardingView: View>: View {
    var showTabbar: Bool
    @ViewBuilder var tabView: TabbarView
    @ViewBuilder var onBoardingView: OnBoardingView
    var body: some View {
        ZStack {
            if showTabbar {
                tabView
            } else {
                onBoardingView
            }
        }
        .animation(.smooth, value: showTabbar)
    }
}
