//
//  Task.swift
//  TaskListApp
//
//  Created by Susanna Souv on 3/1/16.
//  Copyright © 2016 Susanna Souv. All rights reserved.
//

import UIKit

class Task {
    // MARK: Properties
    
    var taskText: String
    var isDone: Bool
    var doneDate: NSDate!
    
    init (taskText: String) {
        self.taskText = taskText
        self.isDone = false
        self.doneDate = nil

    }
    
}
