//
//  AddNewSubjectVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class AddNewSubjectVC: UIViewController {
    
    @IBOutlet weak var subjectTxt: UITextField!
    
    @IBOutlet weak var timeTxt: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var newsubject = String()
    var newtime = String()
   var vc = TimetableVC()
    
    @IBAction func saveAction(_ sender: Any) {
        newsubject = subjectTxt.text!
        newtime = timeTxt.text!
        if subjectTxt.text != "" && timeTxt.text != "" {
            vc.itemsTimeArray.append(Subject.init(subject: newsubject, time: newtime))
        }
        vc.tableView.reloadData()
        
        self.navigationController?.popViewController(animated: true)
        
       
        
    }
    
    
    
}
