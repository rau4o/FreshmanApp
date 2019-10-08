//
//  RegisterVC.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterVC: UIViewController {
    
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passTxt: UITextField!
    
    @IBOutlet weak var rePassTxt: UITextField!
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func doneAction(_ sender: Any) {
        if rePassTxt.text == passTxt.text {
            //MARK: - Here we create user whit his/her email and password
            Auth.auth().createUser(withEmail: emailTxt.text!, password: passTxt.text!) { (user, error) in
                if error != nil {
                    let signInErrorAlert = UIAlertController(title: "SignUp Error", message: "\(String(describing: error?.localizedDescription)) Please try again", preferredStyle: .alert)
                    signInErrorAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                    self.present(signInErrorAlert, animated: true, completion: nil)
                    return
                }
                //
                self.sendEmail()
//                self.dismiss(animated: true, completion: nil)
            }
        }
        else {
            let pswNotMatchAlert = UIAlertController(title: "Ooops", message: "Your password do not match.Please re-enter your password", preferredStyle: .alert)
            pswNotMatchAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.passTxt.text = ""
                self.rePassTxt.text = ""
                
            }))
            present(pswNotMatchAlert, animated: true, completion: nil)
            
        }
    }
    func sendEmail() {
        Auth.auth().signIn(withEmail: emailTxt.text!, password: passTxt.text!) { (user, error) in
            if error != nil {
                print("Error \(String(describing: error?.localizedDescription))")
                return
            }
            //MARK: - Send email verification process
            Auth.auth().currentUser?.sendEmailVerification(completion: { (error) in
                if error != nil {
                    let emailNOTSendAlert = UIAlertController(title: "Email Verification", message: "Verification email failed to send: \(String(describing: error?.localizedDescription))", preferredStyle: .alert)
                    
                    emailNOTSendAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    
                    self.present(emailNOTSendAlert, animated: true, completion: nil)
                }
                else {
                    let emailSentAlert = UIAlertController(title: "Email Verification", message: "Email Verification has been sent.Please verify your account ", preferredStyle: .alert)
                    
                    emailSentAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    
                    self.present(emailSentAlert, animated: true, completion: nil)
                    self.dismiss(animated: true, completion: nil)
                    
                }
                do {
                    try Auth.auth().signOut()
                } catch {
                    //error
                }
            })
        }
    }
    
    //MARK: - Cancel action
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
