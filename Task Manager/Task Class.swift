//
//  Task Class.swift
//  Task Manager
//
//  Created by David Rademaker on 2/28/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

class Task {
    var name: String
    var description: String
    var completed: Bool
    var dueDate: Date?
    init(name: String, description: String, completed: Bool,dueDate: Date?) {
        self.name = name
        self.description = description
        self.completed = completed
        self.dueDate = dueDate
    }
}
