//
//  DetailBusiness.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/28/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailBusiness: UIViewController {
    
    var business: Business?
    
    @IBOutlet weak var imageView: UIImageView!{
        didSet {
            guard let image = business?.imageName else {return}
            imageView.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var label: UILabel!{
        didSet {
            label.text = business?.name
        }
    }
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = business?.text
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
