//
//  LegsVC.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class LegsVC: UIViewController , UITableViewDataSource , UITableViewDelegate {

    @IBOutlet var legTable: UITableView!
    
    let   tableData : [String] = ["TIP TOE SQUATS" ,"SIDE LEG CIRCLES LEFT", "SQUAT THRUST WITH TWIST", "LEFT LUNGE KNEE HOPS","WALL SIT", " ROUNDHOUSE SQUATS KICKS","SUMO SQUAT CALF RAISES" ,"SIDE-LYING LEG LIFT LEFT","PLIE SQUATS"," SIDE LEG CIRCLES RIGHT","BULGARIAN SPLIT SQUAT LEFT","LUNGE TWIST","BACKWARD LUNGE WITH FRONT LEFT","SIDE LUNGES" ,"BACKWARD LUNGE WITH FRONT RIGHT","BOTTOM LEG LIFT LESINGLE RIGHT LEGFT" ,"CURTSY LUNGES", "BOTTOM LEG LIFT RIGHT"," SIDE LEG LIFT RIGHT","SUMO SQUAT & LEG RAISES"," CALF & RAISES","SCISSORS","RIGHT LUNGE KNEE HOPS","LUNGES","SPLIT SQUAT RIGHT","SINGLE RIGHT LEG CALF RAISES"]
    
    let arrImageName : [String] = ["1b.png","2b.png","3b.png","4b.png","5b.png","6b.png","7b.png","8b.png","9b.png","10b.png","11b.png","12b.png","13b.png","14b.png","15b.png","16b.png","17b.png","18b.png","19b.png","20b.png","21b.png","22b.png","23b.png","24b.png","25b.png","26b.png","27b.png","28b.png"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

       
    }
    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = legTable.indexPathForSelectedRow {
            legTable.deselectRow(at: selectedRow, animated: true)
        }
    }
     func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.tableData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = legTable.dequeueReusableCell(withIdentifier: "leg") as! LegsTableViewCell
        
        
        
        cell.legLbl.text = self.tableData[(indexPath as NSIndexPath).row]
        cell.legLbl.adjustsFontSizeToFitWidth = true
        cell.legImg.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
        
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "legsSeque", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "legsSeque"{
            let detailViewController = segue.destination as! LegsVideo
            
            let myindexPath = self.legTable.indexPathForSelectedRow
            let row = myindexPath?.row
            
            if(row == 0)
            {
                let  tableData = "https://www.youtube.com/embed/prPP6Ksu04I?ecver=1"
                
                
                detailViewController.str = tableData
            }
            if (row == 1 )
            {
                let  tableData = "https://www.youtube.com/embed/nLL2hp61-sI?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 2 )
            {
                let  tableData = "https://www.youtube.com/embed/U3cVzi4w1nY?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 3 )
            {
                let  tableData = "https://www.youtube.com/embed/iJsqhnRvAVE?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 4)
            {
                let  tableData = "https://www.youtube.com/embed/-cdph8hv0O0?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 5 )
            {
                let  tableData = "https://www.youtube.com/embed/yRNbfH48aMY?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 6)
            {
                let  tableData = "https://www.youtube.com/embed/5sEwF57R3Lk?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 7)
            {
                let  tableData = "https://www.youtube.com/embed/jgh6sGwtTwk?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 8)
            {
                let  tableData = "https://www.youtube.com/embed/yNKVK2axeNI?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 9)
            {
                let  tableData = "https://www.youtube.com/embed/nLL2hp61-sI?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 10)
            {
                let  tableData = "https://www.youtube.com/embed/7Aqeb8UHl4k?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 11)
            {
                let  tableData = "https://www.youtube.com/embed/t7OH91D0hmQ?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 12)
            {
                let  tableData = "https://www.youtube.com/embed/FfOlFzHyCbs?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 13)
            {
                let  tableData = "https://www.youtube.com/embed/FUX6Pz8vV0s?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 14)
            {
                let  tableData = "https://www.youtube.com/embed/_ggxoUsCx7A?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 15)
            {
                let  tableData = "https://www.youtube.com/embed/9a8r12qqFHs?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 16)
            {
                let  tableData = "https://www.youtube.com/embed/wzHjHs6jlIA?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 17)
            {
                let  tableData = "https://www.youtube.com/embed/dHSIerbp-CE?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 18)
            {
                let  tableData = "https://www.youtube.com/embed/ZZkgopVBPMg?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 19)
            {
                let  tableData = "https://www.youtube.com/embed/fMn3Jz9ltKQ?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 20)
            {
                let  tableData = "https://www.youtube.com/embed/-M4-G8p8fmc?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 21)
            {
                let  tableData = "https://www.youtube.com/embed/WoNCIBVLbgY?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 22)
            {
                let  tableData =  "https://www.youtube.com/embed/iJsqhnRvAVE?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 23)
            {
                let  tableData = "https://www.youtube.com/embed/QF0BQS2W80k?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 24)
            {
                let  tableData = "https://www.youtube.com/embed/VncTA2oFMuo?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 25)
            {
                let  tableData = "https://www.youtube.com/embed/Tla2ScHQgu0?ecver=1"
                detailViewController.str = tableData
                
            }
            
            
            
            
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

   
}
