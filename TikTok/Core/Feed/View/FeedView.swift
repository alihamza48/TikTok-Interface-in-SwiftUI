//
//  FeedView.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(viewModel.posts){post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear{playInitialVedioIfNecessary()}
                }
            }.scrollTargetLayout()
        }.onAppear{
            player.play()
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChageOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVedioIfNecessary(){
        guard
            scrollPosition == nil,
            let post = viewModel.posts.first,
            player.currentItem == nil else{return}
        
        let item = AVPlayerItem(url: URL(string: post.vedioUrl)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChageOfScrollPosition(postId: String?){
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId}) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.vedioUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
    
}

#Preview {
    FeedView()
}
