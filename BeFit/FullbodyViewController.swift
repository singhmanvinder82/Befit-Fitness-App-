//
//  FullbodyViewController.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class FullbodyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet var fullbodyTable: UITableView!
    
    let  tableData : [String] = ["SPIDER PUSH-UPS","BRIDGE" ,"HIGH STEPPING", "INCLINE PUSH-UPS", "LEFT LUNGE KNEE HOPS", "WALL SIT", "JUMPING JACKS", "LONG ARM CRUNCHES", " PUSH UP & ROTATION", "BURPEES", "ONE LEG PUSH UPS", "STAGGED PUSH UPS", "WALL PUSH UPS", "SQUATS", "ONE LEG BRIDGE", "HINDU PUSH UPS", "STRAIGHT ARM PLANK", "RUSSIAN TWIST", "PUSH UPS", "BICYCLE CRUNCHES", "BACKWARD LUNGE WITH FRONT KICK RIGHT", "PLANK", "REVERSE CRUNCHES", "CURTSY LUNGES", "KNEE PUSH UPS", "TRICEPS DIPS", "ABDOMINAL CRUNCHES", "DECLINE PUSH UPS", "SPLIT SQUATE LEFT", "RIGHT LUNGE KNEE HOPS", "LUNGES", "JUMPING SQUATS", "SIDE PLANK LEFT", "MOUNTAIN CLIMBER", "SPLIT SQUAT LEFT", "RIGHT LUNGE KNEE HOPS", "LUNGES", "JUMPING SQUATS", "SIDE PLANK LEFT", "MOUTAIN CLIMBER", "SPLIT SQUAT RIGHT", "BIRD DOG"]
    
    let arrImageName : [String] = ["1.png","2.png","3.png","4.png","5.png","6.png","7.png","8.png","9.png","10.png","11.png","12.png","13.png","14.png","15.png","16.png","17.png","18.png","19.png","20.png","21.png","22.png","23.png","24.png","25.png","26.png","27.png","28.png","29.png","30.png","31.png","32.png","33.png","34.png","35.png","36.png","37.png","38.png","39.png","40.png","41.png","42.png","43.png"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fullbodyTable.dequeueReusableCell(withIdentifier: "fullbody2") as! FullbodyTableViewCell
        
        
        
        cell.Lbl.text = self.tableData[(indexPath as NSIndexPath).row]
        cell.Img1.image = UIImage(named: self.arrImageName[(indexPath as NSIndexPath).row])
        
        
        
        return cell
    }
    
  
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "fullbodySeque"{
            let detailViewController = segue.destination as! fullbodyVideo
            
            let myindexPath = self.fullbodyTable.indexPathForSelectedRow
            let row = myindexPath?.row
            
            if(row == 0)
            {
                let  tableData = "https://www.youtube.com/embed/fKBeHALPsSU?ecver=1"
                
                detailViewController.str = tableData
            }
            if (row == 1 )
            {
                let  tableData = "https://www.youtube.com/embed/WowARnE-p0s?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 2 )
            {
                let  tableData = "https://www.youtube.com/embed/LIioNhecEi4?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 3 )
            {
                let  tableData = "https://www.youtube.com/embed/Z0bRiVhnO8Q?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 4)
            {
                let  tableData = "https://www.youtube.com/embed/iJsqhnRvAVE?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 5 )
            {
                let  tableData = "https://www.youtube.com/embed/-cdph8hv0O0?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 6)
            {
                let  tableData = "https://www.youtube.com/embed/c4DAnQ6DtF8?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 7)
            {
                let  tableData = "https://www.youtube.com/embed/3fDjzzfovZE?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 8)
            {
                let  tableData = "https://www.youtube.com/embed/awxqXW6i55A?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 9)
            {
                let  tableData = "https://www.youtube.com/embed/JZQA08SlJnM?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 10)
            {
                let  tableData = "https://www.youtube.com/embed/vz2ANa9zAMA?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 11)
            {
                let  tableData = "https://www.youtube.com/embed/0CZLos-i1PM?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 12)
            {
                let  tableData = "https://www.youtube.com/embed/qo7F5xU-Xuc?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 13)
            {
                let  tableData = "https://www.youtube.com/embed/a6YHbXD2XlU?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 14)
            {
                let  tableData = "https://www.youtube.com/embed/QKKZ9AGYTi4?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 15)
            {
                let  tableData = "https://www.youtube.com/embed/Y-6Gonx2Wpo?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 16)
            {
                let  tableData = "https://www.youtube.com/embed/vQsQAiE0NQo?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 17)
            {
                let  tableData = "https://www.youtube.com/embed/ko3ivGZQl6w?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 18)
            {
                let  tableData = "https://www.youtube.com/embed/wkD8rjkodUI?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 19)
            {
                let  tableData = "https://www.youtube.com/embed/IODxDxX7oi4?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 20)
            {
                let  tableData = "https://www.youtube.com/embed/Iwyvozckjak?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 21)
            {
                let  tableData = "https://www.youtube.com/embed/FfOlFzHyCbs?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 22)
            {
                let  tableData = "https://www.youtube.com/embed/kiA9j-dR0oM?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 23)
            {
                let  tableData = "https://www.youtube.com/embed/hyv14e2QDq0?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 24)
            {
                let  tableData = "https://www.youtube.com/embed/wzHjHs6jlIA?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 25)
            {
                let  tableData = "https://www.youtube.com/embed/LiKfLE2K_DI?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 26 )
            {
                let  tableData = "https://www.youtube.com/embed/0326dy_-CzM?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 27)
            {
                let  tableData = "https://www.youtube.com/embed/2yOFvV-NSeY?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 28 )
            {
                let  tableData = "https://www.youtube.com/embed/SKPab2YC8BE?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 29)
            {
                let  tableData = "https://www.youtube.com/embed/jbEsLNwBv0s?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 30 )
            {
                let  tableData = "https://www.youtube.com/embed/iJsqhnRvAVE?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 31)
            {
                let  tableData = "https://www.youtube.com/embed/Z2n58m2i4jg?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 32)
            {
                let  tableData = "https://www.youtube.com/embed/eUl1Ttx8b98?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 33)
            {
                let  tableData = "https://www.youtube.com/embed/NXr4Fw8q60o?ecver=1"
                detailViewController.str = tableData
                
            }
            
            if (row == 34)
            {
                let  tableData = "https://www.youtube.com/embed/nmwgirgXLYM?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 35)
            {
                let  tableData = "https://www.youtube.com/embed/VncTA2oFMuo?ecver=1"
                detailViewController.str = tableData
                
            }
            if (row == 36)
            {
                let  tableData = "https://www.youtube.com/embed/wiFNA3sqjCA?ecver=1"
                detailViewController.str = tableData
                
            }
            
            
        }
    }

    

    
}
