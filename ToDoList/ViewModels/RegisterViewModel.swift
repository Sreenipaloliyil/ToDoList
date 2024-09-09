//
//  RegisterViewModel.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/8/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""

    init() { }
    
    func register() {
        guard validate() else {
            return
        }
        //Register
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId =  result?.user.uid else {
                return
            }
            self?.insertUserId(id: userId)
        }
        
    }
    
    private func insertUserId(id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    func validate() -> Bool {
        errorMessage = ""
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please input all fields!"
            return false
        }
        
        guard email.contains("@"), email.contains(".") else {
            errorMessage = "Invalid email!"
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Please enter "
            return false
        }
        return true
    }

}
