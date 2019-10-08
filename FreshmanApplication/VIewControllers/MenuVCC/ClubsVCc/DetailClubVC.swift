//
//  DetailClubVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailClubVC: UIViewController {
    
    
    var club: Clubs?
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            guard let image = club?.imageName else {return}
            imageView.image = UIImage(named: image)
        }
    }
    
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = club?.name
        }
    }
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = club?.text
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
