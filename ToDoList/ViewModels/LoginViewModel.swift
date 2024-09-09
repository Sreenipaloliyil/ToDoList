//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/6/24.
//

import Foundation
import SwiftUI
import FirebaseAuth


class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    
    init() {
        
    }
    
    func login()  {
        guard validate() else {
            return
        }

        
        
    }
    
    func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please input all fields!"
            return false
        }
        
        guard email.contains("@"), email.contains(".") else {
            errorMessage = "Invalid email!"
            return false
        }
        return true
    }
    

}
