//
//  EngineerDetailVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class EngineerDetailVC: UIViewController {
    
    
    var eng: Engineer?
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
             guard let image = eng?.imageName else {return}
            imageView.image = UIImage(named: image)
        }
    }
    
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = eng?.name
        }
    }
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = eng?.text
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}
