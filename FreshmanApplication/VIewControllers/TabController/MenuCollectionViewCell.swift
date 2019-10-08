//
//  MenuCollectionViewCell.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/3/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    override func drawRect(rect: CGRect) { //Your code should go here.
        super.drawRect(rect)
        self.layer.cornerRadius = self.frame.size.width / 2
    }
    
}
