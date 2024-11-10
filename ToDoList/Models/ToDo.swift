//
//  ToDo.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/8/24.
//

import Foundation

struct ToDo: Decodable, Identifiable {
    var id: UUID = UUID()
    var title: String
    var completed: Bool
}


extension ToDo {
    static var sampleTodoList: [ToDo] = [
        ToDo(title: "Task 1", completed: false),
        ToDo(title: "Task 2", completed: false),
        ToDo(title: "Task 3", completed: false),
        ToDo(title: "Task 4", completed: false),
        ToDo(title: "Task 5", completed: false),
        ToDo(title: "Task 6", completed: false),
        ToDo(title: "Task 7", completed: false),
        ToDo(title: "Task 8", completed: false),
        ToDo(title: "Task 9", completed: false),
        ToDo(title: "Task 10", completed: false)
    ]
}
