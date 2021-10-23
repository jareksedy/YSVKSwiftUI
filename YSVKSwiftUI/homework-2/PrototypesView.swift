//
//  PrototypesView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 23.10.2021.
//

import SwiftUI

struct PrototypesView: View {
    var body: some View {
        List {
            UserView()
            UserView()
            UserView()
        }.modifier(PlainList())
    }
}

struct PrototypesView_Previews: PreviewProvider {
    static var previews: some View {
        PrototypesView().preferredColorScheme(.dark)
    }
}
