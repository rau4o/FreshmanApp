//
//  ScheduleTableViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/6/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var subjectLabel: UILabel!
    
    
    @IBOutlet weak var timelabel: UILabel!
    
    
    var schedule: Schedule? {
        didSet {
            subjectLabel.text = schedule?.subject
            timelabel.text = schedule?.time
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
