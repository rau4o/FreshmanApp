//
//  EngineerCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class EngineerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageVIew: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var enginner: Engineer? {
        didSet {
            label.text = enginner?.name
            if let image = enginner?.imageName {
                imageVIew.image = UIImage(named: image)
            }
        }
    }
    
}
