//
//  FiveVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class FiveVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var itemsFiveArray:[Five] = [
        Five.init(subject: "English", time: "13:00")
    
    ]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsFiveArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fiveID", for: indexPath) as! FiveTableViewCell
        
        let five = itemsFiveArray[indexPath.row]
        
        cell.five = five
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailFive" {
            let des = segue.destination as! FiveDetailVC
            
            des.vc = self
        }
    }
    

    

}
