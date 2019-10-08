//
//  BusinessCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/28/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class BusinessCollectionViewCell: UICollectionViewCell {
    
    var business: Business? {
        didSet {
            label.text = business?.name
            if let image = business?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    
}
