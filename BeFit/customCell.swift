//
//  customCell.swift
//  BeFit
//
//  Created by Manvinder Singh on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {

    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var imageViewq: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
