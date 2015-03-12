//
//  GalleryViewController.swift
//  beauty
//
//  Created by 华润明 on 15/3/12.
//  Copyright (c) 2015年 华润明. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let name = imageName {
            beautyImage.image = UIImage(named: name)
            
            switch name{
                case "liuyifei":
                navigationItem.title = "刘亦菲"
                case "zhanghanyun":
                navigationItem.title = "张含韵"
                case "zhuyin":
                navigationItem.title = "朱茵"
                default:
                navigationItem.title = "美人"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func share(sender: AnyObject) {
        var controller:SLComposeViewController =
        SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("Simulator的分享好赞")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}
