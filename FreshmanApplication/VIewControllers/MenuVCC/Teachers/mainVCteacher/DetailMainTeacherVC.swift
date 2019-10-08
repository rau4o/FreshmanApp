//
//  DetailMainTeacherVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/4/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class DetailMainTeacherVC: UIViewController {

    var teacher:MainTeacher?
    
    @IBOutlet weak var imageView: UIImageView!{
        didSet {
            guard let image = teacher?.imageName else{return}
            imageView.image = UIImage(named: image)
        }
    }
    
    
    @IBOutlet weak var label: UILabel!{
        didSet {
            label.text = teacher?.name
        }
    }
    
    
    @IBOutlet weak var textView: UITextView!{
        didSet {
            textView.text = teacher?.text
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
