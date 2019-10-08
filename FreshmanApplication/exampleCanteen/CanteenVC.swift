//
//  CanteenVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/2/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class CanteenVC: UIViewController,UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var category = ["Drinks","Bakery","Fast&Food","Sweets"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
       
    }
    

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return category[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return category.count
    }

}
