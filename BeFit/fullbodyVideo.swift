//
//  fullbodyVideo.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class fullbodyVideo: UIViewController {
    
    var str: String = ""

    @IBOutlet var bodyVideo: UIWebView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        bodyVideo.allowsInlineMediaPlayback = true
        
        bodyVideo.loadHTMLString("<iframe width=\"\(bodyVideo.frame.width)\" height =\"\(bodyVideo.frame.height)\" src=\"\(str)?&playsinLine=1\" frameborder =\"0\" allowfullscreen></iframe>", baseURL: nil)
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    

    
}
