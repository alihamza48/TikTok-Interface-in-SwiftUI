//
//  NotificationsView.swift
//  TikTok
//
//  Created by admin on 7/22/24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack(spacing: 24){
                    ForEach(0 ..< 10){ notifications in
                        NotificationCell()
                        
                    }
                }
            }.navigationTitle("Notifications")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
    }
}

#Preview {
    NotificationsView()
}
