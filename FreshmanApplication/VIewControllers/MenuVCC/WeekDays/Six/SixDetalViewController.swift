//
//  SixDetalViewController.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SixDetalViewController: UIViewController {
    
    var vc = SixVC()
    
    var newSubject = String()
    var newTime = String()
    
    
    
    @IBOutlet weak var subjectTxt: UITextField!
    
    
    @IBOutlet weak var timetxt: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveAction(_ sender: Any) {
        
        newSubject = subjectTxt.text!
        newTime = timetxt.text!
        
        if subjectTxt.text != "" && timetxt.text != "" {
            vc.itemSixArray.append(Six.init(subject: newSubject, time: newTime))
            
        }
        
        vc.tableView.reloadData()
        self.navigationController?.popViewController(animated: true)
    }
    

}
