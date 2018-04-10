//
//  badHabitsVC.swift
//  BeFit
//
//  Created by Student1 on 30/11/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class badHabitsVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet var table4: UITableView!
    var txt4 = [String]()
    var images4 : [String] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
      txt4 = [" Listen to your body, do you feel more exhausted than usual? Stress is related to 99 percent of all illnesses.",  "Know what you weigh. Being overweigth and underweight are not healthy states of being. Consult your doctor or a reputable weight chart that shows ideal weights for your age and body shape.", "Exercise in moderation. Working out too long, too often or with too much intensity can increase your risk with injury. Make sure to build in some rest periods between your workouts.",  "Avoid liquid diets, diet pills and other diet supplements unless you are under the supervision of the physician."]
        
        images4 = ["stress.jpg","overweight.jpg","relax2.jpg","dietPill.jpg"]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = table4.indexPathForSelectedRow {
            table4.deselectRow(at: selectedRow, animated: true)
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return images4.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : customCell = table4.dequeueReusableCell(withIdentifier: "cell") as! customCell
        
        
        let image2 = UIImage(named: (images4[indexPath.row]))
        cell.descLbl?.text = txt4[indexPath.row]
        cell.descLbl?.textColor = UIColor.white
        cell.imageViewq?.image = image2
          cell.descLbl.adjustsFontSizeToFitWidth = true
        
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
