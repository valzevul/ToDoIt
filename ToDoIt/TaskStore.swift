//
//  TaskStore.swift
//  ToDoIt
//
//  Created by Vadim Drobinin on 17/10/14.
//  Copyright (c) 2014 Vadim Drobinin. All rights reserved.
//

import Foundation

class TaskStore {
    
    // Implementation of Singleton
    class var sharedInstance: TaskStore {
    struct Static {
        static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }
    
}