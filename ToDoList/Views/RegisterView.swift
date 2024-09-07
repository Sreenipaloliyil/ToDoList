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
                    .autocorrectionDisabled()
                TextField("Your Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Create Password", text: $password)
                TLButton(title: "Register", background: .green, action: {
                    //Register clicked
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
