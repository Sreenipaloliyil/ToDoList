//
//  ProfileView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/8/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewmodel: ProfileViewModel = ProfileViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Profile View!")
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
