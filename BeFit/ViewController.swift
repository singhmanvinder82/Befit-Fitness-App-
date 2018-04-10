//
//  ViewController.swift
//  BeFit
//
//  Created by Student1 on 05/09/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func workoutBtn(_ sender: Any) {
        
       // self.performSegue(withIdentifier: "workout", sender: self)
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "home") as! ViewController
//        self.present(nextViewController, animated:true, completion:nil)
        // self.navigationController?.pushViewController(nextViewController,animated: true)
        
       let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        
        let vc = storyBoard.instantiateViewController(withIdentifier: "workout") as! WorkoutViewController
//       // self.present(vc, animated:true, completion:nil)
       self.navigationController?.pushViewController(vc,animated: true)

    }

    @IBAction func dietBtn(_ sender: Any) {
        
      //  performSegue(withIdentifier: "diet", sender: self)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //
        let vc = storyBoard.instantiateViewController(withIdentifier: "diet") as! DietHomeViewController
        //       // self.present(vc, animated:true, completion:nil)
        self.navigationController?.pushViewController(vc,animated: true)

    }
    
    
    @IBAction func healthBtn(_ sender: Any) {
        
      //  performSegue(withIdentifier: "health", sender: self)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //
        let vc = storyBoard.instantiateViewController(withIdentifier: "health") as! HealthyTipsVC
        //       // self.present(vc, animated:true, completion:nil)
        self.navigationController?.pushViewController(vc,animated: true)

    }
    
    
    @IBAction func gymBtn(_ sender: Any) {
        
      //  performSegue(withIdentifier: "gym", sender: self)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //
        let vc = storyBoard.instantiateViewController(withIdentifier: "gym") as! Gyms
        //       // self.present(vc, animated:true, completion:nil)
        self.navigationController?.pushViewController(vc,animated: true)

    }
    
    @IBAction func logutBtn(_ sender: UIBarButtonItem) {
        
        
        try!  Auth.auth().signOut()
//        if defaults.object(forKey: "name") != nil
//        {
//            
//        defaults.removeObject(forKey: "name")
//        }
        if self.storyboard != nil
        {
            let vc = storyboard?.instantiateViewController(withIdentifier: "start")as! ProfileViewController
            self.present(vc, animated: true, completion: nil)
        }

    }
    
    
}

