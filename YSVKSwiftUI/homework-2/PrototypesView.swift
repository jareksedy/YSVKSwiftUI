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
            Text("Hi there").padding()
            Text("Holy shit!").padding()
        }.modifier(PlainList())
    }
}

struct PrototypesView_Previews: PreviewProvider {
    static var previews: some View {
        PrototypesView()
    }
}

// MARK: - View modifiers.

struct PlainList: ViewModifier {
    func body(content: Content) -> some View {
        content
            .listStyle(.plain)
    }
}
