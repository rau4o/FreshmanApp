//
//  SubjectViewController.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SubjectViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var subject: Subject?
    
//    var itemsSubject: [Subject] = {
//        var arr: [Subject] = []
//        var first = Subject()
//        first.subject = "Business Analytics"
//        first.time = "14:00"
//
//        arr.append(first)
//        return arr
//    }()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subjectID", for: indexPath) as!
        SubjectTableViewCell
        
        
        
        return cell
    }
    
   
    

   

}
