//
//  ProfileVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ProfileVC: UIViewController {
    
    var fullNameString: String!
    var idString: String!
    var specialityString: String!
    
    
    //MARK: - Outlets
    

    @IBOutlet weak var imageView: UIImageView!
    
//    @IBOutlet weak var addbutton: UIButton!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var specialityLabel: UILabel!
    
    
    @IBOutlet weak var exitButton: UIButton!
    
//    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables
    
//    let storiesRef = Database.database().reference().child("stories")
    
//    var messageArray = [Message]()

    
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
//            self.tableView.reloadData()
//        })
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = fullNameString
        idLabel.text = idString
        specialityLabel.text = specialityString
//        navigationController?.isNavigationBarHidden = true
        imageView.layer.borderWidth = 1
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true

    }
    
    @IBAction func editProfileAction(_ sender: Any) {
//        let editVc = self.storyboard?.instantiateViewController(withIdentifier: "EditProfileVC") as? EditProfileVC
//        self.present(editVc!, animated:
//            true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if case let vc as EditProfileVC = segue.destination, segue.identifier == "segue" {
            vc.comp = {text,text1,text2 in
                self.fullNameLabel.text = text
                self.idLabel.text = text1
                self.specialityLabel.text = text2
            }
            
        }
        
    }
    
    
    
    
    
    @IBAction func logOutAction(_ sender: Any) {
        let logoutPopup = UIAlertController(title: "Logout?", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
        let logoutAction = UIAlertAction(title: "Logout?", style: .destructive) { (buttonTapped) in
            do {
                try Auth.auth().signOut()
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
                self.present(authVC!, animated: true, completion: nil)
                
                //               self.present(vcc, animated: true, completion: nil)
                
            } catch {
                print(error)
            }
        }
        logoutPopup.addAction(logoutAction)
        present(logoutPopup, animated: true, completion: nil)
        
    }
    
    
    
}

