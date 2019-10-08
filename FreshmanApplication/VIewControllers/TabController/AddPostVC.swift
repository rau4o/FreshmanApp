//
//  AddPostVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class AddPostVC: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var postButton: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.userLabel.text = Auth.auth().currentUser?.email
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = ""
        textView.becomeFirstResponder()
    }
    
    @IBAction func postAction(_ sender: Any) {
        if textView.text != "" {
            
            // Create and save a new story
            let newStory = Message(text: textView.text)
            newStory.save()
            
            self.navigationController!.popViewController(animated: true)

        }
        
    }
    
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
