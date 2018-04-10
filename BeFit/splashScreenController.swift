//
//  splashScreenController.swift
//  BeFit
//
//  Created by Manvinder Singh on 11/03/18.
//  Copyright © 2018 Student1. All rights reserved.
//

import UIKit
import AVFoundation

class splashScreenController: UIViewController {

        var player: AVPlayer?
    
    @IBOutlet weak var strtBtnView: UIView!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet var viewnoconnection: UIView!
    @IBOutlet weak var videoView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
           viewnoconnection.isHidden=true
        startBtn.isHidden = false
        strtBtnView.isHidden = false
        
//        if defaults.object(forKey: "name") != nil
//        {
//            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//            
//            let vc = storyBoard.instantiateViewController(withIdentifier: "home") as! ViewController
//            self.present(vc, animated:true, completion:nil)
//        }

        
        if ConnectionCheck.isConnectedToNetwork() {
            
            let path = Bundle.main.path(forResource: "befit", ofType: "mp4")
            player = AVPlayer(url: NSURL(fileURLWithPath: path!) as URL)
            player!.actionAtItemEnd = AVPlayerActionAtItemEnd.none;
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = self.videoView.frame
            playerLayer.videoGravity = AVLayerVideoGravityResize
            self.videoView.layer.insertSublayer(playerLayer, at: 0)
            
            
            
            
            
            
            NotificationCenter.default.addObserver(self, selector: #selector(splashScreenController.playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player!.currentItem)
            player!.seek(to: kCMTimeZero)
            player!.play()
            // Do any additional setup after loading the view.
            
            // Set vertical effect
            let verticalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
            verticalMotionEffect.minimumRelativeValue = -20
            verticalMotionEffect.maximumRelativeValue = 20
            
            // Set horizontal effect
            let horizontalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
            horizontalMotionEffect.minimumRelativeValue = -20
            horizontalMotionEffect.maximumRelativeValue = 20
            
            // Create group to combine both
            let group = UIMotionEffectGroup()
            group.motionEffects = [horizontalMotionEffect, verticalMotionEffect]
            
            // Add both effects to your view
            self.videoView.addMotionEffect(group)
            self.view.addSubview(videoView)
            
            

            }
        else
        {
            
            
            self.viewnoconnection.isHidden=false
            self.startBtn.isHidden = true
            self.strtBtnView.isHidden = true
            
            print("disConnected")
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func btntryagain(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "splashScreen") as! splashScreenController
        self.present(nextViewController, animated:true, completion:nil)
    }
  
    
    
    
    
    
    
    
    
    
    
    
    
    func playerItemDidReachEnd() {
        player!.seek(to: kCMTimeZero)
    }
    @IBAction func LoginBtn(_ sender: UIButton) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "start")
        self.present(nextViewController, animated:true, completion:nil)
        
        player?.pause()
        
    }
   
//
    }
    


