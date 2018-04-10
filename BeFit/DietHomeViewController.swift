//
//  DietHomeViewController.swift
//  BeFit
//
//  Created by Student1 on 30/11/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class DietHomeViewController: UIViewController {

   
    
    var text : [String] = []
    var images5 : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text = ["DAILY DIET PLAN", "DAILY WATER ROUTINE"]
        images5 = ["healthydrinks.jpg","water1.jpg"]
      
        
    }
    
//    @IBAction func dietBtn(_ sender: AnyObject)
//    {
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let dietvc = storyBoard.instantiateViewController(withIdentifier: "diet1") as! DietChartVC
//        //       // self.present(vc, animated:true, completion:nil)
//        self.navigationController?.pushViewController(dietvc,animated: true)
//    }
    
    /* func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return text.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let image2 = UIImage(named: (images5[indexPath.row]))
        cell.textLabel?.text = text[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.imageView?.image = image2
        
       // let myView = storyboard?.instantiateViewController(withIdentifier: "diet1") as! DietChartVC
      //  myView.data = self.text[indexPath.item]
     //   navigationController?.pushViewController(myView, animated: true)
        
        /* if indexPath.row == 0
         {
         let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
         let dietvc = storyBoard.instantiateViewController(withIdentifier: "diet1") as! DietViewController
         //       // self.present(vc, animated:true, completion:nil)
         self.navigationController?.pushViewController(dietvc,animated: true)
         }*/
        
        return cell
    }*/
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "diet1")
        {
            let dest = segue.destination as! DietChartVC
            let indexPath = self.myTable.indexPathForSelectedRow
            
                dest.value1 = text[(indexPath?.row)!]
            
        }
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
