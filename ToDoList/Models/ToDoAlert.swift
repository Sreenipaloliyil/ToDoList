//
//  ToDoAlert.swift
//  ToDoList
//
//  Created by Sreeni Paloliyil on 9/7/24.
//

import Foundation
import SwiftUI

struct ToDoAlert: Identifiable {
    let id = UUID()
    var title: String
    var message: String
    var button: Alert.Button
}
