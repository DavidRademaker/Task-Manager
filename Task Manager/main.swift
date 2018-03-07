//
//  main.swift
//  Task Manager
//
//  Created by David Rademaker on 2/28/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

var inMenu = true
func menu() {
    print("""
What would you like to do
1.Add task
2.Remove a task
3.List tasks
4.List uncomplete tasks
5.list complete tasks
6.Mark task as complete
7.Exit
""")
    var answer = Int(readLine()!)
    while answer == nil {
        print("Input a valid command, please enter again")
        answer = Int(readLine()!)
    }
    if answer == 1 {
        addTask() }
    else if answer == 2 {
        removeTask() }
    else if answer == 3 {
        listTasks() }
    else if answer == 4 {
        listUncompleted() }
    else if answer == 5 {
        listCompleted() }
    else if answer == 6 {
        markTaskAsComplete() }
    else if answer == 7 {
        exit(0)
    }
        
    else {
        print("Invalid Input")
        
    }
    while inMenu == true {
        menu()
        
    }
}
menu()
