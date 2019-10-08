//
//  ThreeTableViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ThreeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var subjectlabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var three: Three! {
        didSet {
            subjectlabel.text = three.subject
            timeLabel.text = three.time
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
