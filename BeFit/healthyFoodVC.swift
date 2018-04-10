//
//  healthyFoodVC.swift
//  BeFit
//
//  Created by Student1 on 30/11/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class healthyFoodVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet var table3: UITableView!
    var txt3 = [String]()
    var images3 : [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        txt3 = ["Choose food that contains minimal amounts of unhealthy fats. Unhealthy fats include both trans fats and saturated fats. These fats will raise your LDL cholesterol, and elevated LDL cholesterol often correlates with an increased risk for heart disease.",   "Eat healthy fats in moderation. Poly-unsaturated, mono-unsaturated and omega-3 fats are all good lifestyle choices.These good fats lower your LDL cholesterol and raise your HDL cholesterol, which correlates with decreased risk for heart disease",  "Select foods that are low in both sugar and highly refined carbohydrates. Minimize your consumption of sweets, soft drinks, sugary fruit juices and white bread. Choose whole fruits, freshly-squeezed juices and whole grain bread instead.",  "Eat a variety of different whole foods instead of eating processed foods.Eat fruits and vegetables for their high vitamin and mineral content.Choose lean meat, beans and tofu for their protein content."]
        
      images3 = ["fatfree.jpg","lowcarb.jpg","sugar.jpg","vitamins.jpg"]
    }

    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = table3.indexPathForSelectedRow {
            table3.deselectRow(at: selectedRow, animated: true)
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return images3.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : customCell = table3.dequeueReusableCell(withIdentifier: "cell") as! customCell
        
        
        let image2 = UIImage(named: (images3[indexPath.row]))
        cell.descLbl.text = txt3[indexPath.row]
        //cell.descLbl?.numberOfLines = 10
        cell.descLbl?.textColor = UIColor.white
        cell.imageViewq?.image = image2
          cell.descLbl.adjustsFontSizeToFitWidth = true
        
        return cell
    }

    override func didReceiveMemoryWarning()
    {
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
