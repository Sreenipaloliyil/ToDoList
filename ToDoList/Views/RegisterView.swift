//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/24/24.
//

import SwiftUI

struct RegisterView: View {
    
    
    @StateObject var viewModel = RegisterViewModel()
//    @State var name: String = ""
//    @State var email: String = ""
//    @State var password: String = ""

    var body: some View {
        VStack {
            HeaderView(title: "Register", 
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: Color.orange)
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                TextField("Your name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Your Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Create Password", text: $viewModel.password)
                TLButton(title: "Register", background: .green, action: {
                    //Register clicked
                    viewModel.register()
                
                })
                .padding()
        
            }
            .padding(.horizontal, 16)
            .offset(y: -100)
                
        }
    }
}

#Preview {
    RegisterView()
}
