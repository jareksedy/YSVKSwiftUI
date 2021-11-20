//
//  PhotoItemView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 20.11.2021.
//

import SwiftUI
import Kingfisher

struct PhotoItemView: View {
    var photo: PhotoItem
    
    var body: some View {
        KFImage(URL(string: photo.photoAvailable!.url)!)
            .resizable()
            .frame(width: photo.photoAvailable!.width / 2, height: photo.photoAvailable!.height / 2)
            .aspectRatio(1, contentMode: .fill)
    }
}
