//
//  DetailVCForDrinks.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/23/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailVCForDrinks: UIViewController {
    
    var drink: Drinks?
    
    @IBOutlet weak var imageVIewDrink: UIImageView! {
        didSet {
            guard let image = drink?.imageName else { return }
            imageVIewDrink.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var labelDrink: UILabel! {
        didSet{
            labelDrink.text = drink?.name
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    

}
