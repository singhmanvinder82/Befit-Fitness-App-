//
//  ArmVideo.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class ArmVideo: UIViewController
{
    
var str : String = ""
    @IBOutlet var armWeb: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        armWeb.allowsInlineMediaPlayback = true
        armWeb.loadHTMLString("<iframe width=\"\(armWeb.frame.width)\" height =\"\(armWeb.frame.height)\" src=\"\(str)?&playsinLine=1\" frameborder =\"0\" allowfullscreen></iframe>", baseURL: nil)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   }
