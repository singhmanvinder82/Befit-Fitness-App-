//
//  FitExercises.swift
//  BeFit
//
//  Created by Student1 on 24/11/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class FitExercises: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet var table1: UITableView!
    var txt1 = [String]()
    var images : [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        txt1 = ["Stretching relaxes your muscles and increases blood flow and nutrients to your cartilage and muscles. Strtching encourages an optimistic outlook, fortifies posture, enables flexibility, increases stamina and much more.","Exercise daily", "go for a walk daily","Involve in daily activities"]
        images = ["stretch2.jpg","1.jpg","walk.jpg","garden.jpg"]
    }

    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = table1.indexPathForSelectedRow {
            table1.deselectRow(at: selectedRow, animated: true)
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return images.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : customCell = table1.dequeueReusableCell(withIdentifier: "cell") as! customCell
      //   let cell1 = table1.dequeueReusableCell(withIdentifier: "cell1")
     //    let cell2 = table1.dequeueReusableCell(withIdentifier: "cell2")
        
        let image1 = UIImage(named: (images[indexPath.row]))
        cell.descLbl?.text = txt1[indexPath.row]
        cell.descLbl?.textColor = UIColor.white
        cell.imageViewq?.image = image1
        cell.descLbl.adjustsFontSizeToFitWidth = true
        
        return cell
           }
    
    override func didReceiveMemoryWarning() {
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
