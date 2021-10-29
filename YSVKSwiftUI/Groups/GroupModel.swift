//
//  GroupModel.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 29.10.2021.
//

import Foundation

class Group: Identifiable {
    internal init(name: String, count: String) {
        self.name = name
        self.count = count
    }
    
    let id: UUID = UUID()
    let name: String
    let count: String
}
