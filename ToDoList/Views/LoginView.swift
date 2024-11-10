//
//  LoginView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/23/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    @State private var currentAlert: ToDoAlert?
    
    var body: some View {

        NavigationView {
            VStack {
                HeaderView(title: "To Do List", 
                           subtitle: "Get things done",
                           angle: 15,
                           background: Color.pink)

                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    
                    TextField("User name", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In", action: {
                        //Log In clicked
                        Task {
                            do {
                                try viewModel.login()
                                
                            } catch ToDoError.invalidData {
                                //Show alert
                                currentAlert = ToDoAlert(title: "Invalid Login", message: "Invlida login data: Please try again!", button: .default(Text("Got it!")))
                            }
                        }
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
            .alert(item: $currentAlert) { alert in
                Alert(title: Text(alert.title), 
                      message: Text(alert.message),
                      dismissButton: alert.button)
            }
        }
    }
    
}

#Preview {
    LoginView()
}
