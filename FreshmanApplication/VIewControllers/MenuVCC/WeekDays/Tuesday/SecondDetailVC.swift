//
//  SecondDetailVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SecondDetailVC: UIViewController {
    
    
    var newsubject = String()
    var newtime = String()

    @IBOutlet weak var subjectTxt: UITextField!
    
    
    @IBOutlet weak var timeTxt: UITextField!
    
    
    @IBOutlet weak var saveButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    var vc = SecondVC()
    
    @IBAction func saveAction(_ sender: Any) {
        newsubject = subjectTxt.text!
        newtime = timeTxt.text!
        if subjectTxt.text != "" && timeTxt.text != "" {
            self.vc.itemsSecondArray.append(Second.init(subject: newsubject, time: newtime))
        }
       
       self.vc.tableView.reloadData()
        self.navigationController?.popViewController(animated: true)
    }
    


}
