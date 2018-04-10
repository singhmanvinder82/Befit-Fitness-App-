
//
//  HygieneVc.swift
//  BeFit
//
//  Created by Student1 on 29/11/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class HygieneVc: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet var table2: UITableView!
    
    var txt2 : [String] = []
    var images2 : [String] = []
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
    txt2 = ["Bathe regularly. Wash your body and your hair often. Your body is constantly shedding skin.That skin needs to come off. Otherwise, it will cake up and can cause illnesses.", "Brush your teeth twice a day and floss daily. Brushing minimizes the accumulation of bacteria in your mouth, which can cause tooth decay and gum disease", "Clean your feet.Make sure to scrub between your toes to prevent athlete's foot and unpleasant odors.", "Always wear clean clothes. In particular, always change your undergarments and socks once daily." , "Trim your nails. Keeping your finger and toenails trimmed and in good shape will prevent problems such as hang nails and infected nail beds.",  "Wash your hands. Keep a hygiene product, like an alcohol-based sanitizing gel, handy for when soap and water isn’t available.", "Sleep tight. Get plenty of rest — 8 to 10 hours a night — so that you are refreshed and are ready to take on the day every morning. Lack of sleep can leave you feeling run down and can compromise your body's natural defenses, your immune system."]
        
    images2 = ["bath.jpg","brush.jpg","cleanFeet.jpg","clothes.jpg", "nails.jpg", "hands.jpg", "sleep.jpg"]
    
    }
    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = table2.indexPathForSelectedRow {
            table2.deselectRow(at: selectedRow, animated: true)
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return images2.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : customCell = table2.dequeueReusableCell(withIdentifier: "cell") as! customCell
        
        
        let image2 = UIImage(named: (images2[indexPath.row]))
        cell.descLbl?.text = txt2[indexPath.row]
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
