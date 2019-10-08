//
//  TimeTableViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/28/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class TimeTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var lkabel: UILabel!
    
    @IBOutlet weak var timeLbael: UILabel!
    var time: Subject! {
        didSet {
            lkabel.text = time.subject
            timeLbael.text = time.time
            
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
