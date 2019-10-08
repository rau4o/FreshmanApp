//
//  FiveDetailVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class FiveDetailVC: UIViewController {
    
    
    var vc = FiveVC()
    
    var newsubject = String()
    var newtime = String()
    
    
    
    
    @IBOutlet weak var subjectTxt: UITextField!
    
    
    @IBOutlet weak var timeTxt: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveAction(_ sender: Any) {
        newsubject = subjectTxt.text!
        newtime = timeTxt.text!
        
        if subjectTxt.text != "" && timeTxt.text != "" {
            vc.itemsFiveArray.append(Five.init(subject: newsubject, time: newtime))
        }
        
        vc.tableView.reloadData()
        
        self.navigationController?.popViewController(animated: true)
        
    }
    


}
