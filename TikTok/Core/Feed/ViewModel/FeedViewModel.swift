//
//  FeedViewModel.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import Foundation

class FeedViewModel: ObservableObject{
    @Published var posts = [Post]()
    
    let vedioUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4" ,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
    ]
    
    init(){
        fetchPosts()
    }
    
    func fetchPosts(){
        self.posts = [
            .init(id: NSUUID().uuidString, vedioUrl: vedioUrls[0]),
            .init(id: NSUUID().uuidString, vedioUrl: vedioUrls[1]),
            .init(id: NSUUID().uuidString, vedioUrl: vedioUrls[2]),
            .init(id: NSUUID().uuidString, vedioUrl: vedioUrls[3]),
        ]
    }
}
