//
//  LawCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class LawCollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var law: LawTeacher? {
        didSet {
            label.text = law?.name
            if let image = law?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
}
