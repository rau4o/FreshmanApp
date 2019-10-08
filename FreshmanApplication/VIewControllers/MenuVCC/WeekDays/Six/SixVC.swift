//
//  SixVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class SixVC: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    var itemSixArray: [Six] = [
        Six.init(subject: "IT ", time: "9:00")
    
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    

  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemSixArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SixID", for: indexPath) as! SixTableViewCell
        
        let six = itemSixArray[indexPath.row]
        
        cell.six = six
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSixVC" {
            let des = segue.destination as! SixDetalViewController
            des.vc = self
        }
    }

}
