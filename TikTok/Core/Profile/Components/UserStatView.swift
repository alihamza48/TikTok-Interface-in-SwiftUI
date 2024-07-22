//
//  UserStatView.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }.frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(value: 5, title: "Hello")
}
