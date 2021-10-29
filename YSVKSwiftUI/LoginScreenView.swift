//
//  ContentView.swift
//  YSVKSwiftUI
//
//  Created by Ярослав on 21.10.2021.
//

import SwiftUI

struct LoginScreenView: View {
    @State private var showLoginError = false
    @State var login = ""
    @State var pass = ""
    @Binding var isLoggedIn: Bool
    
    private func verifyCredentials() {
        if login == "Foo" && pass == "Bar" {
            isLoggedIn = true
        } else {
            showLoginError = true
        }
        pass = ""
    }
    
    
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
                        verifyCredentials()
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
        }.alert(isPresented: $showLoginError, content: {
            Alert(title: Text("Error"),
                  message: Text("Incorrent Login/Password was entered"))
        })
    }
}
//
//struct LoginScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginScreenView(isLoggedIn: false)
//    }
//}
