//
//  FourTableViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class FourTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var subjectLabel: UILabel!
    
    @IBOutlet weak var timelabel: UILabel!
    
    var four: Four! {
        didSet {
            subjectLabel.text = four.subject
            timelabel.text = four.time
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
