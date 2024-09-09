//
//  User.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/8/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
