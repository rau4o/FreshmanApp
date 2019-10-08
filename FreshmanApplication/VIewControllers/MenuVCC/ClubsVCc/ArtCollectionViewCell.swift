//
//  ArtCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/15/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ArtCollectionViewCell: UICollectionViewCell {
    
    
    var clubs: Clubs? {
        didSet {
            label.text = clubs?.name
            
            if let image = clubs?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    
    
    
    
}
