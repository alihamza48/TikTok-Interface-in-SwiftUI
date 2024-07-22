//
//  FeedCell.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    
    var player: AVPlayer
    
    init(post: Post, player: AVPlayer){
        self.post = post
        self.player = player
    }
    
    
    var body: some View {
        ZStack{
            CustomVedioPlayer(player: player)
                .containerRelativeFrame([.vertical,.horizontal])
                
            VStack{
                Spacer()
                
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("ali.hamza")
                            .fontWeight(.semibold)
                        Text("Hakuna matata")
                    }.foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 28) {
                       Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        
                        Button(action: {}, label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height:28)
                                .foregroundStyle(.white)
                                
                                Text("33")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        })
                        
                        Button(action: {}, label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height:28)
                                .foregroundStyle(.white)
                                
                                Text("33")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()

                            }
                        })
                        Button(action: {}, label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height:28)
                                .foregroundStyle(.white)
                        })
                        Button(action: {}, label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height:28)
                                .foregroundStyle(.white)
                        })
                    }
                }.padding(.bottom, 80)
            }.padding()
        }.onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            }
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, vedioUrl: ""), player: AVPlayer())
}
