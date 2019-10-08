//
//  HumanCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/28/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class HumanCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var human: Human? {
        didSet {
            label.text = human?.name
            if let image = human?.imageName {
                imageView.image = UIImage(named: image)
            }
            
        }
    }
    
    
}
