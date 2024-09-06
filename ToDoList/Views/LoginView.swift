//
//  LoginView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/23/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String = ""
    @State var password: String = ""

    var body: some View {

        NavigationView {
            VStack {
                HeaderView(title: "To Do List", 
                           subtitle: "Get things done",
                           angle: 15,
                           background: Color.pink)
                Form {
                    TextField("User name", text: $userName)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button(action: {
                        //Log in action
                    }, label: {
                        Text("Log In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 36)
                            .background(Color.blue)
                            .cornerRadius(6.0)
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
    LoginView(userName: "", password: "")
}
