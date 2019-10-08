//
//  DetailFastFoodVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailFastFoodVC: UIViewController {
    
    var fast: Fast?
    
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            guard let image = fast?.imageName else {return }
            imageView.image = UIImage(named: image)
        }
    }
    
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = fast?.name
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
