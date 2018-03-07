//
//  funcs.swift
//  Task Manager
//
//  Created by David Rademaker on 2/28/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

var taskManager = [Task]()

func addTask() {
    print("What is the name of the task?")
    let name = readLine()!.lowercased()
    print("What is the desription for this task?")
    let description = readLine()?.lowercased()
    print("How many days until the task needs to be complete?")
    
    let daysUntilDue = Int(readLine()!)!
    
    let calender = Calendar.current
    let dueDate = calender.date(byAdding: .day, value: daysUntilDue, to: Date())
    
    let task = Task(name: name , description: description!, completed: false, dueDate: nil)
    taskManager.append(task)
    menu()
}
func removeTask() {
    print("What task would you like to remove?")
    let name = readLine()?.lowercased()
    var counter = 0
    
    for task in taskManager {
        if task.name == name {
            taskManager.remove(at: counter)
        }
        counter += 1
    }
    menu()
    
}
func listTasks() {
    for task in taskManager {
        print(task.name)
        print(task.description)
        print(task.dueDate!)
    }
    menu()
}
func listUncompleted() {
    for task in taskManager {
        if task.completed == false {
            print(task.name)
        }
    }
    menu()
}
func listCompleted() {
    for task in taskManager {
        if task.completed == true {
            print(task.name)
        }
    }
    menu()
}
func markTaskAsComplete() {
    print("Which task have you completed?")
    let input = readLine()?.lowercased()
    for task in taskManager {
        if input == task.name {
            task.completed = true
            print ("Marked as complete")
        }
    }
    menu()
}
