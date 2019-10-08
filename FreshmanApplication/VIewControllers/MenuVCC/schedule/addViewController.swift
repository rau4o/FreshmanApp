//
//  addViewController.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/6/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class addViewController: UIViewController {
    
    var vc = ScheduleViewController()
    
    var newSubject = String()
    var newTime = String()
    
    @IBOutlet weak var subjectTxt: UITextField!
    
    
    @IBOutlet weak var timeTxt: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func doneAction(_ sender: Any) {
        newSubject = subjectTxt.text!
        newTime = timeTxt.text!
        
        if subjectTxt.text != "" && timeTxt.text != "" {
            vc.arr.append(Schedule.init(subject: newSubject, time: newTime))
            vc.tableView.reloadData()
            
        }
        
//        vc.tableView.reloadData()
        self.navigationController?.popViewController(animated: true)
    }
    

}
