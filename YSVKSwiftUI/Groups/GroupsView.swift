//
//  Groups.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import SwiftUI

struct GroupsView: View {
    private var groups: [Group] = [
    Group(name: "Советский леттеринг", description: "Открытая группа.", imageName: "lettering", count: "14 282 подписчика.")
    ]
    var body: some View {
            List(groups) { group in
                    GroupRowView(group: group)
            }
            .modifier(PlainList())
            .navigationBarTitle("Группы", displayMode: .inline)
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
