//
//  AbsVC.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class AbsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var absTable: UITableView!
    
    let tableData : [String] = ["BICYCLE CRUNCHES","BRIDGE","SIDE PLANK RIGHT","CROSS ARM CRUNCHES","PLANK","REVERSE CRUNCHES","LEG RAISES", "LONG ARM CRUNCHES","ABDOMINAL CRUNCHES","COBRAS","SIDE PLANK LEFT","MOUNTAIN CLIMBER","ONE LEG BRIDGE","HEEL TOUCH"]
    let arrImageName : [String] = ["a.png","b.png","c.png","d.png","e.png","f.png","g.png","h.png","i.png","j.png","k.png","l.png","m.png","n.png","o.png","p.png"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

       
    }
    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = absTable.indexPathForSelectedRow {
            absTable.deselectRow(at: selectedRow, animated: true)
        }
    }
     func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.tableData.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = absTable.dequeueReusableCell(withIdentifier: "abs") as! AbsTableViewCell
        
        
        cell.abLbl.text = self.tableData[(indexPath as NSIndexPath).row]
        cell.abLbl.adjustsFontSizeToFitWidth = true
        cell.abImg.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "absSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "absSegue"{
            let detailViewController = segue.destination as! AbsVideo
            let myindexPath = self.absTable.indexPathForSelectedRow
            let row = myindexPath?.row
            
            if(row == 0)
            {
                let  tableData = "https://www.youtube.com/embed/Iwyvozckjak?ecver=1"
                
                
                detailViewController.str = tableData
            }
            if (row == 1 )
            {
                let  tableData = "https://www.youtube.com/embed/WowARnE-p0s?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 2 )
            {
                let  tableData = "https://www.youtube.com/embed/K2VljzCC16g?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 3 )
            {
                let  tableData = "https://www.youtube.com/embed/mK_VURuFYyQ?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 4)
            {
                let  tableData = "https://www.youtube.com/embed/pSHjTRCQxIw?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 5 )
            {
                let  tableData = "https://www.youtube.com/embed/hyv14e2QDq0?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 6)
            {
                let  tableData = "https://www.youtube.com/embed/JB2oyawG9KI?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 7)
            {
                let  tableData = "https://www.youtube.com/embed/3fDjzzfovZE?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 8)
            {
                let  tableData = "https://www.youtube.com/embed/_M2Etme-tfE?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 9)
            {
                let  tableData = "https://www.youtube.com/embed/1211U-RXrrM?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 10)
            {
                let  tableData = "https://www.youtube.com/embed/K2VljzCC16g?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 11)
            {
                let  tableData = "https://www.youtube.com/embed/De3Gl-nC7IQ?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 12)
            {
                let  tableData = "https://www.youtube.com/embed/0KEhga2e2r4?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 13)
            {
                let  tableData = "https://www.youtube.com/embed/6V3hi2AO9Wg?ecver=1"
                detailViewController.str = tableData
                
            }
            
            
            
        }
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
