//
//  MainTableView.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/2/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class MainTableView: UITableView,UITableViewDataSource,UITableViewDelegate {

     var categories = ["Drinks", "Sweet", "Bakery", "Fast&Food"]
    
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryTableViewCell
        return cell
        
    }
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return categories[section]
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

}
