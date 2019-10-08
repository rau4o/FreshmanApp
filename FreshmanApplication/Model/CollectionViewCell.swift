//
//  CollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    override func draw(_ rect: CGRect) { //Your code should go here.
        super.draw(rect)
        self.layer.cornerRadius = 5
        layer.masksToBounds = true
    }
    
    var menu: MenuModel? {
        didSet {
            label.text = menu?.name
            if let image = menu?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    
}
