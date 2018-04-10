//
//  ProfileViewController.swift
//  BeFit
//
//  Created by Student1 on 08/09/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


 let defaults = UserDefaults.standard

class ProfileViewController: UIViewController,UITextFieldDelegate{
    
    
   
    
    @IBOutlet var passwordTxt: UITextField!
    @IBOutlet var email: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.email.delegate = self
        self.passwordTxt.delegate = self
        
//        if defaults.object(forKey: "name") != nil
//        {
//            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//            
//            let vc = storyBoard.instantiateViewController(withIdentifier: "home") as! ViewController
//            self.present(vc, animated:true, completion:nil)
//        }
//        else{
//            print("go")
//        }

        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        passwordTxt.resignFirstResponder()
        email.resignFirstResponder()
       
    }
//    func textFieldShouldReturn(userText: UITextField!) -> Bool {
//       self.view.endEditing(true);
//        
//        return false;
//    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.endEditing(false)
    }
    
    @IBAction func register(_ sender: AnyObject)
    {
        Auth.auth().createUser(withEmail:self.email.text!, password: self.passwordTxt.text!) { (user, error) in
            
            if error == nil
            {
                // self.post()
                let alert = UIAlertController(title: "success..", message: "Data saved", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil))
                self.present(alert, animated: true, completion: nil)
                return
                
            }
                
            else{     let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            }
    }
    }
    @IBAction func login(_ sender: AnyObject)
    {
        
        Auth.auth().signIn(withEmail: self.email.text!, password: self.passwordTxt.text!){(user ,error) in
            
            
            
            if error == nil {
                
                //Print into the console if successfully logged in
                print("You have successfully logged in")
//                if defaults.object(forKey: "name") == nil
//                {
//                defaults.set(self.email.text, forKey: "name")
//                    print("\name")
//                defaults.synchronize()
//                }
//
                //Go to the HomeViewController if the login is sucessful
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                
                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "yo") as! UINavigationController
                self.present(nextViewController, animated:true, completion:nil)
              // self.navigationController?.pushViewController(nextViewController,animated: true)
           //     self.navigationController pushViewController:myVController animated:YES
            }
            else {
                
                //Tells the user that there is an error and then gets firebase to tell them the error
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            }
   
    }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
