//
//  CurrentUserProfileView.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 2){
                    ProfileHeaderView()
                    
                    PostsGridView()
                }
                .padding(.top)
            }.navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
