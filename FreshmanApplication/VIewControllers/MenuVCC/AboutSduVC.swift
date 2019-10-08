//
//  AboutSduVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class AboutSduVC: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var sduImageView: UIImageView!
    
    @IBOutlet weak var aboutLabel: UILabel!
    
    @IBOutlet weak var sduTextView: UITextView!
    
    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func cancelACtion(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
