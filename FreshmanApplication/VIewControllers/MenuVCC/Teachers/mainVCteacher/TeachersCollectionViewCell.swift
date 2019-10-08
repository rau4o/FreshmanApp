//
//  TeachersCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/4/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class TeachersCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    
    var teacher: MainTeacher? {
        didSet {
            label.text = teacher?.name
            if let image = teacher?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
}
