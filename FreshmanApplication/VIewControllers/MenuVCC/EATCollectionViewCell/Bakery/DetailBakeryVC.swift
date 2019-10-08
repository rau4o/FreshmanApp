//
//  DetailBakeryVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailBakeryVC: UIViewController {

    var bakery: Bakery?
    
    
    @IBOutlet weak var imageVIew: UIImageView! {
        didSet {
            guard let image = bakery?.imageName else {return}
            imageVIew.image = UIImage(named: image)
        }
    }
    
    
    @IBOutlet weak var labelBakery: UILabel! {
        didSet {
            labelBakery.text = bakery?.name
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
