//
//  GroupView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 23.10.2021.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        HStack {
            AvatarImage {
                Image("lettering")
            }
            
            VStack(alignment: .leading) {
                Text("Советский леттеринг").modifier(TitleText())
                Text("Открытая группа.").modifier(SubTitleText())
                Text("14 282 подписчика.").modifier(SubTitleText())
            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
