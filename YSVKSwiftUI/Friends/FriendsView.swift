//
//  FriendsView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct FriendsView: View {
    private var friends: [Friend] = [
        Friend(name: "Ярослав Седышев", imageName: "jarek", lastSeen: "Был онлайн два часа назад."),
        Friend(name: "Элина Гикбрейнсова", imageName: "elina", lastSeen: "", isOnline: true),
       ]
    var body: some View {
        List(friends) { friend in
            NavigationLink(destination: FriendPhotoView(friend: friend)) {
                FriendRowView(friend: friend)
            }
        }
        .modifier(PlainList())
        .navigationBarTitle("Друзья", displayMode: .inline)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
