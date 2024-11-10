//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/8/24.
//

import Foundation


class ToDoListViewModel: ObservableObject {
    @Published var items = ToDo.sampleTodoList

}
