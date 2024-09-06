//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/24/24.
//

import SwiftUI

struct RegisterView: View {
    
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            HeaderView(title: "Register", 
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: Color.orange)
            Form {
                TextField("Your name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Your Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Create Password", text: $password)
                Button(action: {
                    //Log in action
                }, label: {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 36)
                        .background(Color.green)
                        .cornerRadius(6.0)
                })
                .padding()
                
            }
            .padding(.horizontal, 16)
            .offset(y: -100)
                
        }
    }
}

#Preview {
    RegisterView(name: "", email: "", password: "")
}
