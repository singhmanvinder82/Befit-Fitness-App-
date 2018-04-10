//
//  ActualDietVC.swift
//  BeFit
//
//  Created by Student1 on 30/11/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class ActualDietVC: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet var myTable: UITableView!
    var str : String = ""
    var str1 : String = ""
    var str2 : String = ""
    let tabledata = ["BREAKFAST","LUNCH","DINNER"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = myTable.indexPathForSelectedRow {
            myTable.deselectRow(at: selectedRow, animated: true)
        }
    }
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.tabledata.count
    }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "breakfast") as! ActualDietViewCell
            
            cell.lbl.text = "BREAKFAST"
             cell.lbl.adjustsFontSizeToFitWidth = true
            
            cell.breakfastPlan.text = self.str
           cell.breakfastPlan.adjustsFontForContentSizeCategory = true
          
            
            
            
            return cell
        }
        if indexPath.row == 1
        {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "lunch") as! ActualDietViewCell
            
            cell1.lbl.text = "LUNCH"
             cell1.lbl.adjustsFontSizeToFitWidth = true
            cell1.breakfastPlan.text = self.str1
             cell1.breakfastPlan.adjustsFontForContentSizeCategory = true
            
            
            return cell1
            
        }
        if  indexPath.row == 2
        {
            
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "evening") as! ActualDietViewCell
            
            cell2.lbl.text = "EVENING"
             cell2.lbl.adjustsFontSizeToFitWidth = true
            cell2.breakfastPlan.text = self.str2
            cell2.breakfastPlan.adjustsFontForContentSizeCategory = true
            
            
            
            return cell2
        }
        
        return UITableViewCell()
    }
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


