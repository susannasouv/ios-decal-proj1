//
//  TaskTableViewCell.swift
//  ToDoListApp
//
//  Created by Susanna Souv on 2/20/16.
//  Copyright © 2016 Susanna Souv. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    // MARK: Properties
    
    
    @IBOutlet weak var taskText: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
