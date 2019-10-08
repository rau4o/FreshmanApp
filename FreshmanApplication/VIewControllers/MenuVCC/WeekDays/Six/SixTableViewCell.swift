//
//  SixTableViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SixTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var subjectLabel: UILabel!
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    var six: Six! {
        didSet {
            subjectLabel.text = six.subject
            timeLabel.text = six.time
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
