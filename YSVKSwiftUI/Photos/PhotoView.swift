//
//  PhotoView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 20.11.2021.
//

import SwiftUI

struct PhotoView: View {
    @ObservedObject var viewModel: PhotosViewModel
    
    init(viewModel: PhotosViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {

        Text("hey there!")
        
       // .onAppear { viewModel.fetch() }
    }
}
