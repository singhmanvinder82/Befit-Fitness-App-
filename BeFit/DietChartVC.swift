//
//  DietChartVC.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class DietChartVC: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet var dietTable: UITableView!
        
        
        var arr = [String]()
        var data : String=""
        var value1 = String()
        override func viewDidLoad()
        {
            super.viewDidLoad()
            arr = ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
        }
        
    override func viewDidAppear(_ animated: Bool) {
        if let selectedRow = dietTable.indexPathForSelectedRow {
            dietTable.deselectRow(at: selectedRow, animated: true)
        }
    }
        func numberOfSections(in tableView: UITableView) -> Int
        {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return arr.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = dietTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            cell.textLabel?.text = arr[indexPath.row]
            cell.textLabel?.textColor = .white
            cell.layer.borderColor = UIColor.black.cgColor
            cell.layer.cornerRadius = 20
            cell.textLabel?.highlightedTextColor = UIColor.cyan
            //cell.textLabel?.sizeToFit()
            cell.textLabel?.adjustsFontSizeToFitWidth = true
            cell.textLabel?.textAlignment = .center
            
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToActual", sender: self)
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            if segue.identifier == "goToActual"
            {
                let detailViewController = segue.destination as! ActualDietVC
                let myindexPath = dietTable.indexPathForSelectedRow
                let row = myindexPath?.row
                
                if(row == 0)
                {
                    let data="One glass of Water,Half WaterMelon"
                    detailViewController.str = data
                    
                    let data1 = "2 cups Ravioli & Tomato-Cheddarcheese Toast"
                    
                    detailViewController.str1=data1
                    
                    let data2="Salmon & Vegetables:-4 oz. baked salmon,1 cup roasted Brussels sprouts,1/2 cup brown rice,1 Tbsp. walnuts,Salt and pepper to taste (1/8 tsp. each),Vinaigrette,Combine 1 1/2 tsp. each olive oil, lemon juice and maple syrup"
                    
                    detailViewController.str2 = data2
                    
                    
                }
                if(row == 1)
                {
                    let data = "1 hard boiled eggs, 1 grapefruit, Black Coffee"
                    detailViewController.str = data
                    
                    let data1 = " 2 hard boiled eggs, 1 grapefruit,1 banana Or 1 toast, Black Coffee"
                    
                    detailViewController.str1=data1
                    
                    let data2 = " Vegatable Salad, Black Coffee "
                    detailViewController.str2=data2
                    
                    
                }
                
                
                if(row == 2)
                {
                    let data = "1 boiled egg, grapefruit,1 Toast"
                    detailViewController.str = data
                    
                    let data1 = " Fruit Salad (consists of cucumber,banana,stawberry,apple, pineapple)"
                    
                    detailViewController.str1=data1
                    
                    let data2 =  " Fruit Salad (consists of cucumber,banana,stawberry,apple etc)"
                    detailViewController.str2=data2
                    
                    
                }
                
                if(row == 3)
                {
                    let data = "1 hard boiled eggs, 1 grapefruit, Black Coffee"
                    detailViewController.str = data
                    
                    let data1 = " Vegatable Salad, Black Coffee, grapefruit "
                    
                    detailViewController.str1=data1
                    
                    let data2 = " 3 hard boiled eggs, boiled spinch,BlackCoffee "
                    detailViewController.str2=data2
                    
                    
                }
                
                
                if(row == 4)
                {
                    let data = "1 hard boiled eggs, 1 grapefruit,1 Banana ,1 toast, Black Coffee"
                    detailViewController.str = data
                    
                    let data1 = "3 hard boiled eggs, boiled spinch,1 banana, 1 toast, Black Coffee"
                    
                    detailViewController.str1=data1
                    
                    let data2 = " 1 piece of white fish,vegetable salad, 1 banana ,1 toast, Black Coffee"
                    detailViewController.str2=data2
                    
                    
                }
                
                if(row == 5)
                {
                    let data = "2 hard boiled eggs, 1 grapefruit,1 Banana ,1 toast, Black Coffee"
                    
                    detailViewController.str = data
                    
                    let data1 = " Fruit Salad (consists of cucumber,banana,stawberry,apple etc)"
                    
                    detailViewController.str1=data1
                    
                    let data2 = " chicken,celery,Tomato,Black Coffee "
                    detailViewController.str2=data2
                    
                    
                }
                
                if(row == 6)
                {
                    let data = "2 hard boiled eggs, 1 grapefruit, Black Coffee"
                    detailViewController.str = data
                    
                    let data1 = " 1 chicken breast,Celery,Tomato,1 grapefruit,Black Coffee"
                    
                    detailViewController.str1=data1
                    
                    let data2 = " 1 chicken breast,Celery,Tomato,1 grapefruit, Steamed Cabbage,Black Coffee"
                    detailViewController.str2=data2
                    
                    
                }
                
            }
            
        }
        
        
    

}
