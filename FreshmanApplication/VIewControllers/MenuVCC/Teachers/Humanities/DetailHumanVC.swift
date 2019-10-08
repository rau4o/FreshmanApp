//
//  DetailHumanVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/28/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailHumanVC: UIViewController {
    
    var human: Human?
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            guard let image = human?.imageName else {return}
            imageView.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = human?.name
        }
    }
    
    @IBOutlet weak var texxtView: UITextView! {
        didSet {
            texxtView.text = human?.text
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
