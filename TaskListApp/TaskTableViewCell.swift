//
//  TaskTableViewCell.swift
//  TaskListApp
//
//  Created by Susanna Souv on 3/1/16.
//  Copyright © 2016 Susanna Souv. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    @IBOutlet weak var taskText: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    var myTask: Task!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let myButton = doneButton {
            myButton.addTarget(self, action: "toggleDone", forControlEvents: .TouchUpInside)
        }
    }
    
    override func setSelected(selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)
    }
    
    func toggleDone() {
        if let currTask = myTask {
            if currTask.isDone {
                doneButton.setTitle("Done?", forState: .Normal)
                currTask.doneDate = nil
            }
            else {
                doneButton.setTitle("Done!", forState: .Normal)
                currTask.doneDate = NSDate()
            }
            currTask.isDone = !currTask.isDone
        }
        
    }

}
