//
//  ImageLoaderView.swift
//  AIChat
//
//  Created by Kiran K on 02/04/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    var urlString: String = Constants.randomImage
    var aspectMode: ContentMode = .fill
    var body: some View {
        Rectangle()
            .overlay {
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity(style: .circular))
                    .aspectRatio(contentMode: aspectMode)
            }
            .allowsHitTesting(false)
    }
}

#Preview {
    ImageLoaderView()
}
