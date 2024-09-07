//
//  LoginView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/23/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {

        NavigationView {
            VStack {
                HeaderView(title: "To Do List", 
                           subtitle: "Get things done",
                           angle: 15,
                           background: Color.pink)
                Form {
                    TextField("User name", text: $viewModel.userName)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In", background: .blue, action: {
                        //Log In clicked
                    })
                    .padding()
                }
                .padding(.horizontal, 16)
                .offset(y: -50)
                VStack {
                    Text("New around here!")
                    NavigationLink(destination: RegisterView()) {
                        Text("Create an account")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    LoginView()
}
