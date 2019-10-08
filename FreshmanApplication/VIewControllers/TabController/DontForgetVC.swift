//
//  DontForgetVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/19/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

//import UIKit
//import FirebaseDatabase
//
//class DontForgetVC: UIViewController {
//
//
//    @IBOutlet weak var tableVIew: UITableView!
//
//    let storiesRef = Database.database().reference().child("stories")
//    var messageArray = [Message]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableVIew.dataSource = self
//        tableVIew.delegate = self
//        self.navigationController?.navigationBar.isHidden = false
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        // download stories
//        storiesRef.observe(.value, with: { (snapshot) in
//            self.messageArray.removeAll()
//
//            for child in snapshot.children {
//                let childSnapshot = child as! DataSnapshot
//                let story = Message(snapshot: childSnapshot)
//                print(story)
//                self.messageArray.insert(story, at: 0)
//            }
//
//            self.tableVIew.reloadData()
//        })
//    }
//
//
////    @IBAction func addPostAction(_ sender: Any) {
////        let addpostVC = self.storyboard?.instantiateViewController(withIdentifier: "AddPostVC") as? AddPostVC
////        self.present(addpostVC!, animated: true, completion: nil)
////    }
////
//
//}
//extension DontForgetVC: UITableViewDelegate, UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return messageArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as? FeedCell else { return UITableViewCell() }
//                let story = messageArray[indexPath.row]
//
//                cell.story = story
//
//
//        return cell
//    }
//}
//
////extension ProfileVC: UITableViewDelegate, UITableViewDataSource {
////    func numberOfSections(in tableView: UITableView) -> Int {
////        return 1
////    }
////
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return messageArray.count
////    }
////
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as? FeedCell else { return UITableViewCell() }
//////        let story = messageArray[indexPath.row]
//////
//////        cell.story = story
////
////
////        return cell
////    }
////}
