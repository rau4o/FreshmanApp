//
//  HomeTableVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/2/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class HomeTableVC: UITableView,UITableViewDataSource,UITableViewDelegate {
    
    
    var product = ProductCollection()
    var category = ["Drinks","Sweets","Fast&Food","Bakery"]
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.section
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryCell
        return cell
       
//            return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return category[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

}
