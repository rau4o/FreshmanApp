//
//  FastFoodCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class FastFoodCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var labelFastFood: UILabel!
    
    var fast: Fast? {
        didSet {
            labelFastFood.text = fast?.name
        if let image = fast?.imageName {
            imageView.image = UIImage(named: image)
            }
        }
    }
    
    
    
}
