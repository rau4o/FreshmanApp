//
//  ProductCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/2/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    
    var food: Food? {
        didSet {
            label.text = food?.name
            if let image = food?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
}
