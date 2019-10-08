//
//  CanteenCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/5/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class CanteenCollectionViewCell: UICollectionViewCell {
    
    var canteen: Canteen? {
        didSet {
            label.text = canteen?.name
            priceLabel.text = canteen?.price
            if let image = canteen?.imageName {
                imageView.image = UIImage(named: image)
            }
            
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
}
