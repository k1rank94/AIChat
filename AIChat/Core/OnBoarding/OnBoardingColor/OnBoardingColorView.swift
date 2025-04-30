//
//  OnBoardingColorView.swift
//  AIChat
//
//  Created by Kiran K on 30/04/25.
//

import SwiftUI

struct OnBoardingColorView: View {
    
    @State private var selectedColor: Color? = nil
    let colors: [Color] = [.blue, .brown, .cyan, .gray, .green, .indigo, .mint, .orange, .purple, .accentColor]

    var body: some View {
        ScrollView {
            colorGrid
            .padding(24)
        }
        .safeAreaInset(
            edge: .bottom,
            alignment: .center,
            spacing: 24) {
                if let selectedColor {
                    ctaButton
                        .background(Color(uiColor: .systemBackground))
                        .padding(24)
                }
            }
            .animation(.bouncy, value: selectedColor)
    }
    
    private var colorGrid: some View {
        LazyVGrid(
            columns: Array(repeating: GridItem(.flexible()), count: 3),
            alignment: .center,
            spacing: 16,
            pinnedViews: [.sectionHeaders],
            content: {
                Section {
                    ForEach(colors, id: \.self) { color in
                        Circle()
                            .fill(.accent)
                            .overlay {
                                color
                                    .clipShape(Circle())
                                    .padding(selectedColor == color ? 10 : 0)
                            }
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                } header: {
                    Text("Select a profile color")
                        .font(.headline)
                }
            }
        )
    }
    
    private var ctaButton: some View {
        NavigationLink {
            OnBoardingCompletdView()
        } label: {
            Text("Continue")
                .callToAction()
        }
        .transition(AnyTransition(.move(edge: .bottom)))

    }
}

#Preview {
    OnBoardingColorView()
}
