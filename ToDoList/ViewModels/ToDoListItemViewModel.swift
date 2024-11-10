//
//  ToDoListItemViewModel.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/29/24.
//

import Foundation

class ToDoListItemViewModel: ObservableObject {
    @Published var item: ToDoListItem
    
    init(item: ToDoListItem) {
        self.item = item
    }
}

struct ToDoListItem {
    let id: UUID
    
}
