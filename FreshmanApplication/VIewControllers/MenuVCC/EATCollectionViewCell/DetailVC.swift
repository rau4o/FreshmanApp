//
//  DetailVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var product: Product?
    
    @IBOutlet weak var imageViewEat: UIImageView! {
        didSet {
            guard let image = product?.imageName else { return }
            imageViewEat.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var eatLabel: UILabel! {
        didSet{
            eatLabel.text = product?.name
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func cancelACtion(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
