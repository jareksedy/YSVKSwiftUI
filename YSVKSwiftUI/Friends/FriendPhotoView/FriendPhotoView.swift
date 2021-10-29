//
//  FriendPhotoView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct FriendPhotoView: View {
    var friend: Friend
    var body: some View {
        Image(friend.imageName)
    }
}
