//
//  WorkoutViewController.swift
//  BeFit
//
//  Created by Student1 on 08/09/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet var wkTable: UITableView!
    
    var tableData : [String] = ["Full Body Workout","Arm WorKout" ,"Butt Workout", "Abs Workout", " Leg Workout"];
    
    var arrImageName : [String] = ["fullbody.jpeg","arm.jpg","bwork.jpg","abs.jpg","leg.jpg"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.tableData.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0
        {
            let cell = wkTable.dequeueReusableCell(withIdentifier: "fullbody") as! workoutTableCell
            
            
            
            cell.label.text = self.tableData[(indexPath as NSIndexPath).row]
            cell.img.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
            
            cell.img.layer.borderWidth = 1.0
            cell.img.layer.masksToBounds = false
            cell.img.layer.borderColor = UIColor.white.cgColor
            cell.img.layer.cornerRadius = cell.img.frame.size.width/2
            cell.img.clipsToBounds = true
            return cell
        }
        else   if indexPath.row == 1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "arm") as! workoutTableCell
            
            
            
            cell.label.text = self.tableData[(indexPath as NSIndexPath).row]
            cell.img.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
            
            cell.img.layer.borderWidth = 1.0
            cell.img.layer.masksToBounds = false
            cell.img.layer.borderColor = UIColor.white.cgColor
            cell.img.layer.cornerRadius = cell.img.frame.size.width/2
            cell.img.clipsToBounds = true
            return cell
        }
        else   if indexPath.row == 2            {
            let cell = tableView.dequeueReusableCell(withIdentifier: "butt") as! workoutTableCell
            
            
            
            cell.label.text = self.tableData[(indexPath as NSIndexPath).row]
            cell.img.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
            
            cell.img.layer.borderWidth = 1.0
            cell.img.layer.masksToBounds = false
            cell.img.layer.borderColor = UIColor.white.cgColor
            cell.img.layer.cornerRadius = cell.img.frame.size.width/2
            cell.img.clipsToBounds = true
            return cell
        }
        else   if indexPath.row == 3
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "abs") as! workoutTableCell
            
            
            
            cell.label.text = self.tableData[(indexPath as NSIndexPath).row]
            cell.img.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
            
            cell.img.layer.borderWidth = 1.0
            cell.img.layer.masksToBounds = false
            cell.img.layer.borderColor = UIColor.white.cgColor
            cell.img.layer.cornerRadius = cell.img.frame.size.width/2
            cell.img.clipsToBounds = true
            return cell
        }
        else    if indexPath.row == 4
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "legs") as! workoutTableCell
            
            
            cell.label.text = self.tableData[(indexPath as NSIndexPath).row]
            cell.img.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
            
            cell.img.layer.borderWidth = 1.0
            cell.img.layer.masksToBounds = false
            cell.img.layer.borderColor = UIColor.white.cgColor
            cell.img.layer.cornerRadius = cell.img.frame.size.width/2
            cell.img.clipsToBounds = true
            return cell
        }
        
        
        
        return UITableViewCell()
    }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }

   
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
