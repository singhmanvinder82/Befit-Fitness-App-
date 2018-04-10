//
//  ActualDietViewCell.swift
//  BeFit
//
//  Created by Student1 on 30/11/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class ActualDietViewCell: UITableViewCell {

    @IBOutlet var breakfastPlan: UITextView!
    
    @IBOutlet var lbl: UILabel!
    var str : String = ""
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
