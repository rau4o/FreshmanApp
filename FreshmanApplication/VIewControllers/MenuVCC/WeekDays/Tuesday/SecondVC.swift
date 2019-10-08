//
//  SecondVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SecondVC: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var itemsSecondArray: [Second] = [
        Second.init(subject: "Algebra", time: "15:00"),
        Second.init(subject: "Matan", time: "17:00"),

    ]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.reloadData()

        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsSecondArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCellID", for: indexPath) as! SecondTableViewCell
        
        let second = itemsSecondArray[indexPath.row]
        
        cell.second = second
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSecond" {
            let des = segue.destination as! SecondDetailVC
            des.vc = self
        }
        
    }



}
