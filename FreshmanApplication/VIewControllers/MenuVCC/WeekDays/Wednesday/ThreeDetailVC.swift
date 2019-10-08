//
//  ThreeDetailVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ThreeDetailVC: UIViewController {
    
    var vc = ThreeVC()
    
    var newSubject = String()
    var newTime = String()
    
    @IBOutlet weak var subjectTxt: UITextField!
    
    
    @IBOutlet weak var timeTxt: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveAction(_ sender: Any) {
        newSubject = subjectTxt.text!
        newTime = timeTxt.text!
        if subjectTxt.text != "" && timeTxt.text != "" {
            vc.itemsThreeArray.append(Three.init(subject: newSubject, time: newTime))
        }
        
        vc.tableView.reloadData()
        
        self.navigationController?.popViewController(animated: true)
    }
    
    

}
