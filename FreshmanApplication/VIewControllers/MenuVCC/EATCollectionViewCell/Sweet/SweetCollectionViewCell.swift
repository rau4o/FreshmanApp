//
//  SweetCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SweetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageVIew: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    var sweet: Sweet? {
        didSet {
            label.text = sweet?.name
            if let image = sweet?.imageName {
                imageVIew.image = UIImage(named: image)
            }
        }
    }

    
}
