//
//  UserOnlineView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 23.10.2021.
//

import SwiftUI

import SwiftUI

struct UserOnlineView: View {
    var body: some View {
        HStack {
            AvatarImage {
                Image("elina")
            }
            
            VStack(alignment: .leading) {
                Text("Элина Гикбрейнсова").modifier(TitleText())
                Text("Сейчас онлайн.").modifier(OnlineText())
            }.padding(.leading, 10)
        }.padding(.top, 20).padding(.bottom, 20)
    }
}

struct UserOnlineView_Previews: PreviewProvider {
    static var previews: some View {
        UserOnlineView().preferredColorScheme(.dark)
    }
}
