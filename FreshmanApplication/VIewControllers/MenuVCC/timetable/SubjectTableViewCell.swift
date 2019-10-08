//
//  SubjectTableViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SubjectTableViewCell: UITableViewCell {
    
    
    var subject: Subject! {
        didSet{
            subjectLabel.text = subject.subject
            timeLabel.text = subject.time
        }
    }
    
    @IBOutlet weak var subjectLabel: UILabel!
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
