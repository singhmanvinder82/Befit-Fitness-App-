//
//  AbsVideo.swift
//  BeFit
//
//  Created by Student1 on 01/12/17.
//  Copyright © 2017 Student1. All rights reserved.
//

import UIKit

class AbsVideo: UIViewController {

    @IBOutlet var abVideo: UIWebView!
    var str: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        abVideo.allowsInlineMediaPlayback = true
        abVideo.loadHTMLString("<iframe width=\"\(abVideo.frame.width)\" height =\"\(abVideo.frame.height)\" src=\"\(str)?&playsinLine=1\" frameborder =\"0\" allowfullscreen></iframe>", baseURL: nil)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
