//
//  JapanViewController.swift
//  beauty
//
//  Created by 华润明 on 15/3/13.
//  Copyright (c) 2015年 华润明. All rights reserved.
//

import UIKit
import Social

class JapanViewController: UIViewController {
    
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebook(sender: AnyObject) {
        var controller:SLComposeViewController =
        SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("Simulator的分享好赞")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }

    @IBAction func twitter(sender: AnyObject) {
        var controller:SLComposeViewController =
        SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("Simulator的分享好赞")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func sinaweibo(sender: AnyObject) {
        var controller:SLComposeViewController =
        SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("Simulator的分享好赞")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}