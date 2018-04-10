//
//  LegsVideo.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class LegsVideo: UIViewController
{

    var str : String = ""
    @IBOutlet var lVideo: UIWebView!
    override func viewDidLoad()
    {
        
        print(str)
        super.viewDidLoad()
        lVideo.allowsInlineMediaPlayback = true
        
        lVideo.loadHTMLString("<iframe width=\"\(lVideo.frame.width)\" height =\"\(lVideo.frame.height)\" src=\"\(str)?&playsinLine=1\" frameborder =\"0\" allowfullscreen></iframe>", baseURL: nil)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
}
