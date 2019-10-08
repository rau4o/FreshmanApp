//
//  EatCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class EatCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mealImageView: UIImageView!
    
    @IBOutlet weak var nameMealLabel: UILabel!
    
    var product: Product? {
        didSet {
            nameMealLabel.text = product?.name
            if let image = product?.imageName {
                mealImageView.image = UIImage(named: image)
            }
        }
    }
    
}
