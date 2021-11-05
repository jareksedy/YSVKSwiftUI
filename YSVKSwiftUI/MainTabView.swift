//
//  TabView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        //NavigationView {
            TabView {
                FriendsView()
                    .tabItem {
                        Image(systemName: "person.2.circle")
                        Text("Друзья")
                    }
                
                GroupsView(viewModel: GroupViewModel(GroupAPI()))
                    .tabItem {
                        Image(systemName: "person.3.sequence.fill")
                        Text("Группы")
                    }

            }
    }
}
