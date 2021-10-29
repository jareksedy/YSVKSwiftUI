//
//  FriendRowView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct FriendRowView: View {
    var friend: Friend
    
    var body: some View {
        HStack {
            AvatarImage {
                Image(friend.imageName)
            }
            
            VStack(alignment: .leading) {
                Text(friend.name).modifier(TitleText())
                Text(friend.isOnline ? "Сейчас онлайн." : friend.lastSeen).modifier(SubTitleText())
            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}
