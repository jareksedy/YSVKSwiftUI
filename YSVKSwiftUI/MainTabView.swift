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
                
                GroupsView()
                    .tabItem {
                        Image(systemName: "person.3.sequence.fill")
                        Text("Группы")
                    }
                
                FeedView()
                    .tabItem {
                        Image(systemName: "newspaper.fill")
                        Text("Лента")
                    }
            }
        //}.navigationBarTitle("ВК-клиент")//.navigationBarHidden(true)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
