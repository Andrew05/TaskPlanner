//
//  TaskTableViewCell.swift
//  StudyPlanner
//
//  Created by Andrew Lawrence on 2017-10-04.
//  Copyright © 2017 Andrew Lawrence. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        dateLabel.textColor = UIColor(red: 14/256, green: 122/256, blue: 254/256, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
