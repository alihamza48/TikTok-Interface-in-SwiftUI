//
//  UserCell.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading){
                Text("ali.hamza")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("Ali Hamza")
                    .font(.footnote)
            }
            Spacer()
        }.padding(.horizontal)
       
    }
}

#Preview {
    UserCell()
}
