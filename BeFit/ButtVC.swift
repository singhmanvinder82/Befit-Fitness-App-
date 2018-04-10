//
//  ButtVC.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class ButtVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var buttTable: UITableView!
    
    let tableData : [String] = ["REVERSE FLUTTER KICKS","WALL SIT","BACKWARD LUNGE","GLUTE KICK BACK LEFT","FIRE HYDRANT RIGHT","SUMO SQUAT CALF RAISES","SIDE-HOP","SIDE-LYING LEG LIFT LEFT","STANDING GLUTE KICK BACKS","HIP BRIDGE & LEG LIFT RIGHT"," SKATER JUMP","SUPERMAN "
        ,"SPLIT SQUAT LEFT","LUNGES"," JUMPING SQUATS"," SPLIT SQUAT RIGHT"]
    let arrImageName : [String] = ["1c.png","2c.png","3c.png","4c.png","5c.png","6c.png","7c.png","8c.png","9c.png","10c.png","11c.png","12c.png","13c.png","14c.png","15c.png","16c.png","17c.png","18c.png","19c.png","20c.png","21c.png","22c.png","23c.png","24c.png","25c.png","26c.png","27c.png","28c.png","29c.png","30c.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = buttTable.indexPathForSelectedRow {
            buttTable.deselectRow(at: selectedRow, animated: true)
        }
    }
     func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.tableData.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = buttTable.dequeueReusableCell(withIdentifier: "butt") as! ButtTableViewCell
        
        
        
        cell.bLbl.text = self.tableData[(indexPath as NSIndexPath).row]
        cell.bLbl.adjustsFontSizeToFitWidth = true
        cell.bImg.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "buttSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "buttSegue"{
            let detailViewController = segue.destination as! ButtVideo
            let myindexPath = self.buttTable.indexPathForSelectedRow
            let row = myindexPath?.row
            
            if(row == 0)
            {
                let  tableData = "https://www.youtube.com/embed/zUT-V36Il-s?ecver=1"
                
                
                detailViewController.str = tableData
            }
            if (row == 1 )
            {
                let  tableData = "https://www.youtube.com/embed/-cdph8hv0O0?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 2 )
            {
                let  tableData = "https://www.youtube.com/embed/K3vgNL2OFI8?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 3 )
            {
                let  tableData = "https://www.youtube.com/embed/ELJ-14EdAHM?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 4)
            {
                let  tableData = "https://www.youtube.com/embed/unSQzpkBRmQ?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 5 )
            {
                let  tableData = "https://www.youtube.com/embed/RM7AD_6eFJ0?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 6)
            {
                let  tableData = "https://www.youtube.com/embed/ZmDWBx2_-tQ?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 7)
            {
                let  tableData = "https://www.youtube.com/embed/jgh6sGwtTwk?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 8)
            {
                let  tableData = "https://www.youtube.com/embed/Ay0fhfp-k7Q?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 9)
            {
                let  tableData = "https://www.youtube.com/embed/qlIcZK3c3g4?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 10)
            {
                let  tableData = "https://www.youtube.com/embed/VUT1RHyMEuc?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 11)
            {
                let  tableData = "https://www.youtube.com/embed/2V5NipAulKY?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 12)
            {
                let  tableData = "https://www.youtube.com/embed/QF0BQS2W80k?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 13)
            {
                let  tableData = "https://www.youtube.com/embed/eUl1Ttx8b98?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 14)
            {
                let  tableData = "https://www.youtube.com/embed/VncTA2oFMuo?ecver=1"
                detailViewController.str = tableData
                
            }
            
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
