//
//  DrinkCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/23/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DrinkCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var drinkName: UILabel!
    
    
    var drinks: Drinks? {
        didSet {
            drinkName.text = drinks?.name
            if let image = drinks?.imageName {
                drinkImage.image = UIImage(named: image)
            }
        }
    }

    
}
