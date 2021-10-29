//
//  ContainerView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct ContainerView: View {
   @State private var shouldShowMainView: Bool = false
  
   var body: some View {
       NavigationView {
           HStack {
               LoginScreenView(isLoggedIn: $shouldShowMainView)
               
               NavigationLink(destination: MainTabView(), isActive: $shouldShowMainView) {
                   EmptyView()
               }
           }
       }
   }
}
