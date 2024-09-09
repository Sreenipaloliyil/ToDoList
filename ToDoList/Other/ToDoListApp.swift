//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/22/24.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
