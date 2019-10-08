//
//  FourDetailVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class FourDetailVC: UIViewController {
    
    var vc = FourVC()
    
    var newsubject = String()
    var newtime = String()
    
    
    @IBOutlet weak var subjectTxt: UITextField!
    
    @IBOutlet weak var timeTxt: UITextField!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveAction(_ sender: Any) {
        newsubject = subjectTxt.text!
        newtime = timeTxt.text!
        
        if subjectTxt.text != "" && timeTxt.text != "" {
            vc.itemsFourArray.append(Four.init(subject: newsubject, time: newtime))
        }
        
        vc.tableView.reloadData()
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    

    

}
