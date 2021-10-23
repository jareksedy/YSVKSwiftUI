//
//  UserView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 23.10.2021.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        HStack {
            AvatarImage {
                Image("jarek")
            }
            
            VStack(alignment: .leading) {
                Text("Ярослав Седышев").modifier(TitleText())
                Text("Был онлайн два часа назад.").modifier(SubTitleText())
            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView().preferredColorScheme(.dark)
    }
}
