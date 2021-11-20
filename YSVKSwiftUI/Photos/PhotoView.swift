//
//  PhotoView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 20.11.2021.
//

import SwiftUI
import Kingfisher

struct PhotoView: View {
    @ObservedObject var viewModel: PhotosViewModel
    let columns = [
        //GridItem(.adaptive(minimum: 100, maximum: 250), spacing: 2),
        GridItem(.flexible(minimum: 50), spacing: 2),
        GridItem(.flexible(minimum: 50), spacing: 2),
        GridItem(.flexible(minimum: 50), spacing: 2),
    ]
    
    init(viewModel: PhotosViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {

        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(viewModel.photos) { photo in
                    GeometryReader { geometry in
                        KFImage(URL(string: photo.photoAvailable!.url)!)
                            .resizable()
                            .scaledToFill()
                            .frame(height: geometry.size.width)
                    }
                    .clipped()
                    .aspectRatio(1, contentMode: .fit)
                }
            }
        }
        .onAppear { viewModel.fetch() }
    }
}
