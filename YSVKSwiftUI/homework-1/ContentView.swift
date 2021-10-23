//
//  ContentView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 21.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State var login = ""
    @State var pass = ""
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                Image(systemName: "scribble.variable")
                    .font(.system(size: 72.0))
                    .padding()
                
                HStack {
                    Text("Телефон или e-mail:")
                        .foregroundColor(.secondary)
                    
                    Spacer()
                }
                
                TextField("", text: $login)
                    .textFieldStyle(.roundedBorder)
                
                HStack {
                    Text("Пароль:")
                        .foregroundColor(.secondary)
                    
                    Spacer()
                }.padding(.top, 10)
                
                SecureField("", text: $pass)
                    .textFieldStyle(.roundedBorder)
                
                HStack {
                    
                    Button("Войти") {
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 8.0)))
                    
                    Button("Отмена") {
                    }
                    .padding()
                    .foregroundColor(.secondary)
                    
                    Spacer()
                }.padding(.top, 10)
                
                HStack {
                    Text("Еще не зарегистрированы?")
                        .foregroundColor(.secondary)
                    Spacer()
                }.padding(.top, 10)
                
                HStack {
                    Button("Зарегистрироваться") {
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(Color.blue)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 8.0)))
                }
                
            }.padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
