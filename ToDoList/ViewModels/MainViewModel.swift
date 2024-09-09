//
//  MainViewModel.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/8/24.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    func isUserSignedIn() -> Bool {
        Auth.auth().currentUser != nil
    }
    
}
