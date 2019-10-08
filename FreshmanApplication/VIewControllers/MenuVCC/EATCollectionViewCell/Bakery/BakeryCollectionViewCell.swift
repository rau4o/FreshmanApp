//
//  BakeryCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class BakeryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bakeryImageView: UIImageView!
    
    @IBOutlet weak var bakeryLabel: UILabel!
    
    
    var bakery: Bakery? {
        didSet {
            bakeryLabel.text = bakery?.name
            if let image = bakery?.imageName {
                bakeryImageView.image = UIImage(named: image)
            }
        }
    }
    
    

}
