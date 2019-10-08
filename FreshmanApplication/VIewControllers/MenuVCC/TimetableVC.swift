//
//  TimetableVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class TimetableVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var itemsTimeArray:[Subject] = [
        Subject.init(subject: "Computer Modeling", time: "14:00")
    
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
       
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return itemsTimeArray.count
//    }
//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemsTimeArray.count
        
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimeCell", for: indexPath) as! TimeTableViewCell
        
        let time = itemsTimeArray[indexPath.row]
        
        cell.time = time
        cell.layer.borderWidth = 3
        
        return cell
    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 6
//    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAddSubject" {
            let des = segue.destination as! AddNewSubjectVC
            
            des.vc = self
        }
    }
    
    

   
    
   

}
