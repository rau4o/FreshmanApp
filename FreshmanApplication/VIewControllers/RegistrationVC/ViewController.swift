//
//  ViewController.swift
//  FreshmanApplication
//
//  Created by rau4o on 11/11/18.
//  Copyright © 2018 rau4o. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    //
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passTxt: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Check user in database or log or not log
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func loginAction(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTxt.text!, password: passTxt.text!) { (user, error) in
            if error != nil {
                let loginErrorAlert = UIAlertController(title: "Login error", message: "\(String(describing: error?.localizedDescription)) Please try again", preferredStyle: .alert)
                loginErrorAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(loginErrorAlert, animated: true, completion: nil)
                return
            }
            if (Auth.auth().currentUser?.isEmailVerified)! {
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as? MenuVC
                self.present(authVC!, animated: true, completion: nil)
                return
            }
            else {
                let notVerifiedAlert = UIAlertController(title: "Not verified", message: "Your account is pending verififcation.Please check your email and password", preferredStyle: .alert)
                notVerifiedAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(notVerifiedAlert, animated: true, completion: nil)
                do {
                    try Auth.auth().signOut()
                }
                catch {
                    //error
                }
            }
        }
    }
    
    @IBAction func forgotAction(_ sender: Any) {
        let forgotPwAction = UIAlertController(title: "Forgot Password?", message: "Do not worry.We can reset it for you", preferredStyle: .alert)
        forgotPwAction.addTextField { (text) in
            text.placeholder = "Enter your email address"
        }
        forgotPwAction.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        forgotPwAction.addAction(UIAlertAction(title: "Reset Password", style: .default, handler: { (action) in
            let resetEmail = forgotPwAction.textFields?.first?.text
            //MARK: - Send if user Forgot his/her password to theit emails
            Auth.auth().sendPasswordReset(withEmail: resetEmail!, completion: { (error) in
                if error != nil {
                    let resetFailedAlert = UIAlertController(title: "Reset Failed", message: "Error \(String(describing: error?.localizedDescription))", preferredStyle: .alert)
                    resetFailedAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(resetFailedAlert, animated: true, completion: nil)
                }
                else {
                    let resetEmailSentAlert = UIAlertController(title: "Reset email Sent", message: "A password reset email has been sent to your registered email address successfully.Please check your email", preferredStyle: .alert)
                    resetEmailSentAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(resetEmailSentAlert, animated: true, completion: nil)
                }
            })
        }))
        self.present(forgotPwAction, animated: true, completion: nil)
    }
    
    @IBAction func createAccountAction(_ sender: Any) {
        let reVC = self.storyboard?.instantiateViewController(withIdentifier: "RegisterVC") as? RegisterVC
        self.present(reVC!, animated: true, completion: nil)
        
    }
    
    
}

