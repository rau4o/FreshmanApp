//
//  ScheduleViewController.swift
//  FreshmanApplication
//
//  Created by rau4o on 12/6/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var monArr: [Schedule] = [
        Schedule.init(subject: "IT ", time: "9:00")
    ]
    
    var tueArr: [Schedule] = [
        Schedule.init(subject: "Database", time: "10:00")
    ]
    var wedArr: [Schedule] = [
        Schedule.init(subject: "Cisco", time: "11:00")
    ]
    var thurArr: [Schedule] = [
        Schedule.init(subject: "Programming", time: "12:00")
    ]
    var friArr: [Schedule] = [
        Schedule.init(subject: "IOS", time: "13:00")
    ]
    var satArr: [Schedule] = [
        Schedule.init(subject: "Anroid", time: "14:00")
    ]
    var sunArr: [Schedule] = [
        Schedule.init(subject: "Web design", time: "15:00")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleTableViewCell", for: indexPath) as! ScheduleTableViewCell
        
        cell.schedule = arr[indexPath.row]
        
        return cell
        
    }
    var arr = [Schedule]()
    
    @IBAction func monAction(_ sender: Any) {
        arr = monArr
        tableView.reloadData()
    }
    
    @IBAction func tueAction(_ sender: Any) {
        arr = tueArr
        tableView.reloadData()
    }
    @IBAction func wedAction(_ sender: Any) {
        arr = wedArr
        tableView.reloadData()
        
    }
    
    @IBAction func thurAction(_ sender: Any) {
        arr = thurArr
        tableView.reloadData()
    }
    
    @IBAction func friAction(_ sender: Any) {
        arr = friArr
        tableView.reloadData()
    }
    
    @IBAction func satAction(_ sender: Any) {
        arr = satArr
        tableView.reloadData()
    }
    
    
    @IBAction func sunAction(_ sender: Any) {
        arr = sunArr
        tableView.reloadData()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showSixVC" {
//            let des = segue.destination as! SixDetalViewController
//            des.vc = self
//        }
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let des = segue.destination as! addViewController
            des.vc = self
        }
    }
    
    
    

}
