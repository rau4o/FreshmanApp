//
//  FourVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/29/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class FourVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var itemsFourArray: [Four] = [
        Four.init(subject: "IT", time: "11:00")
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsFourArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fourID", for: indexPath) as! FourTableViewCell
        
        let four = itemsFourArray[indexPath.row]
        cell.four = four
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailFour" {
            let des = segue.destination as! FourDetailVC
            des.vc = self
        }
    }

}
