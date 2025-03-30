//
//  View + Ext.swift
//  AIChat
//
//  Created by Kiran K on 31/03/25.
//

import SwiftUI

extension View {
    func callToAction() -> some View {
        self
            .font(.headline)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(.accent)
            .clipShape(.rect(cornerRadius: 16))
    }
}
