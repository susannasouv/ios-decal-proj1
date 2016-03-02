//
//  TaskStatsViewController.swift
//  TaskListApp
//
//  Created by Susanna Souv on 3/1/16.
//  Copyright © 2016 Susanna Souv. All rights reserved.
//

import UIKit

class TaskStatsViewController: UIViewController {

    @IBOutlet weak var numberOfTasksStr: UILabel!
    var numberOfTasks = 0
    var taskList: [Task]!
    var taskCalendar = NSCalendar.currentCalendar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let taskList = taskList {
            for task in taskList {
                if let taskDate = task.doneDate {
                    if taskCalendar.isDateInToday(taskDate) {
                        numberOfTasks += 1
                
                    }
                }
            }
        }
        numberOfTasksStr.text = String(numberOfTasks)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
