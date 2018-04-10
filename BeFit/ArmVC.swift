//
//  ArmVC.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class ArmVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var armTable: UITableView!
    let tableData : [String] = ["PLANK TAPS","REVERSE PUSH-UPS","DIAMOND PUSH-UPS","BOX PUSH-UPS","CHEST PRESS PULSE","PLANK","ARM CIRCLES","PUNCHES","TRICEPS DIPS","PUSH-UP & ROTATION","COBRAS","MOUNTAIN CLIMBER","WALL PUSH-UPS","DIAGONAL PLANK","FLOOR TRICEPS DIPS","ARM RAISES ","PUSH-UPS"]
    let arrImageName : [String] = ["1a.png","2a.png","3a.png","4a.png","5a.png","6a.png","7a.png","8a.png","9a.png","10a.png","11a.png","12a.png","13a.png","14a.png","15a.png","16a.png","17a.png"]
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = armTable.indexPathForSelectedRow {
            armTable.deselectRow(at: selectedRow, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let cell = armTable.dequeueReusableCell(withIdentifier: "arm") as! ArmTableViewCell
        
        
        
        
        cell.aLbl.text = self.tableData[(indexPath as NSIndexPath).row]
        cell.aLbl.adjustsFontSizeToFitWidth = true
        cell.aImg.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
        
        
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      
            performSegue(withIdentifier:"armSeque", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "armSeque"{
            let detailViewController = segue.destination as! ArmVideo
            let myindexPath = self.armTable.indexPathForSelectedRow
            let row = myindexPath?.row
            
            if(row == 0)
            {
                let  tableData = "https://www.youtube.com/embed/hEGUul8mWnU?ecver=1"
                
                
                detailViewController.str = tableData
            }
            if (row == 1 )
            {
                let  tableData = "https://www.youtube.com/embed/a00N2M7I1_o?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 2 )
            {
                let  tableData = "https://www.youtube.com/embed/J0DnG1_S92I?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 3 )
            {
                let  tableData =  "https://www.youtube.com/embed/3K8T3JSA2H8?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 4)
            {
                let  tableData = "https://www.youtube.com/embed/gNywcYw-YSM?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 5 )
            {
                let  tableData = "https://www.youtube.com/embed/pSHjTRCQxIw?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 6)
            {
                let  tableData = "https://www.youtube.com/embed/6KPD7Mr7Yjk?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 7)
            {
                let  tableData = "https://www.youtube.com/embed/bJVtkTPliuc?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 8)
            {
                let  tableData = "https://www.youtube.com/embed/tKjcgfu44sI?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 9)
            {
                let  tableData = "https://www.youtube.com/embed/iu3VptPuikY?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 10)
            {
                let  tableData = "https://www.youtube.com/embed/Aa6zdmje-c4?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 11)
            {
                let  tableData = "https://www.youtube.com/embed/fBZHkGT0W5Y?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 12)
            {
                let  tableData = "https://www.youtube.com/embed/a6YHbXD2XlU?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 13)
            {
                let  tableData = "https://www.youtube.com/embed/YI4WVmBiqvE?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 14)
            {
                let  tableData = "https://www.youtube.com/embed/s3Mppxwx1o8?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 15)
            {
                let  tableData = "https://www.youtube.com/embed/eG0kbjDAM68?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 16)
            {
                let  tableData = "https://www.youtube.com/embed/Eh00_rniF8E?ecver=1"
                detailViewController.str = tableData
                
            }
            
            
            
        }
    }

}
