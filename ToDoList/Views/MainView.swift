//
//  ContentView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 8/22/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    var body: some View {
        if viewModel.isUserSignedIn(), !viewModel.currentUserId.isEmpty {
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
