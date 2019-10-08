//
//  EditProfileVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/19/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit

class EditProfileVC: UIViewController {
    
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var specialityTextField: UITextField!
    
    @IBOutlet weak var doneButton: UIButton!
    
    var comp: ((String,String,String) -> ())?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    let profVC = ProfileVC()
    

    @IBAction func doneAction(_ sender: Any) {
        getData()
        
    }
    
    private func getData() {
        guard let text = fullNameTextField.text, let text1 = idTextField.text,let text2 = specialityTextField.text else {
            comp?("Student","ID","Speciality")
            navigationController?.popViewController(animated: true)
            return
        }
        comp?(text,text1,text2)
        navigationController?.popViewController(animated: true)
    }
}
