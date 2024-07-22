//
//  ExploreView.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 16){
                    ForEach(0 ..< 20 ) {user in
                        UserCell()
                    }
                }
            }.navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
