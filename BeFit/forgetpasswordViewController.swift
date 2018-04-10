//
//  forgetpasswordViewController.swift
//  carpartage1
//
//  Created by Student1 on 26/09/17.
//  Copyright © 2017 sebiz. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class forgetpasswordViewController: UIViewController {
    
    @IBOutlet weak var forgettext: UITextField!
    
    @IBOutlet weak var continuebtn: UIButton!
    
    @IBOutlet weak var view1: UIView!

    @IBAction func CONTINUETF(_ sender: Any) {
      
        let color = UIColor.white
        forgettext.layer.borderColor = color.cgColor
        forgettext.layer.borderWidth = 1
        
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     self.continuebtn.layer.cornerRadius = 12
        self.forgettext.layer.cornerRadius = 15
        let color = UIColor.white
        continuebtn.layer.borderColor = color.cgColor
        continuebtn.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func continuebtn(_ sender: Any) {
   
     if forgettext.text == ""
     {
        let color = UIColor.red
        forgettext.layer.borderColor = color.cgColor
        forgettext.layer.borderWidth = 1
     }
    
     else if  !(self.isValidEmail(testStr: self.forgettext.text!))
     
     {
        let alertController = UIAlertController(title: "Alert", message: "email is not valid", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        }
//
    //continue button body
        
     else {
        Auth.auth().sendPasswordReset(withEmail: self.forgettext.text!, completion: { (error) in
            
            var title = ""
            var message = ""
            
            if error != nil {
                title = "Error!"
                message = (error?.localizedDescription)!
            } else {
                title = "Success!"
                message = "Password reset email sent."
                self.forgettext.text = ""
            }
            
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
        })
        }
    
    }
    func isValidEmail(testStr:String) -> Bool {
        print("validate emilId: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._]+[A-Z0-9a-z]+@[A-Za-z]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    }

}
