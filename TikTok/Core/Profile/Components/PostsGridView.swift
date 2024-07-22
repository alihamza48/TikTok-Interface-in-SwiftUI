//
//  PostsGridView.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI

struct PostsGridView: View {
    private let items = [
        GridItem(.flexible(), spacing:1),
        GridItem(.flexible(), spacing:1),
        GridItem(.flexible())
    ]
    private let width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0 ..< 15){posts in
            Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostsGridView()
}
