//
//  LawDetailVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/25/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class LawDetailVC: UIViewController {
    
    var law: LawTeacher?
    
    @IBOutlet weak var imageVIew: UIImageView! {
        didSet {
            guard let image = law?.imageName else{return}
            imageVIew.image = UIImage(named: image)
        }
        
    }
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = law?.name
        }
    }
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = law?.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
