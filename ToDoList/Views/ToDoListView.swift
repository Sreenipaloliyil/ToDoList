//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/8/24.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewModel()
    
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
        UINavigationBar.appearance().prefersLargeTitles = true
    }
    var body: some View {
        NavigationView {
            VStack {
                List($viewModel.items) { item in
                    HStack {
                        Text(item.title.wrappedValue)
                    }
                }
            }
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        //Add new item tapped
                    } label: {
                        Image(systemName: "plus")
                    }

                }

            }
        }
        
    }
}

#Preview {
    ToDoListView(userId: "test user id")
}
