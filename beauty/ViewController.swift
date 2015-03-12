//
//  ViewController.swift
//  beauty
//
//  Created by 华润明 on 15/3/12.
//  Copyright (c) 2015年 华润明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beaauties = ["刘亦菲","张含韵","朱茵"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "liuyifei"
                case 1:
                    vc.imageName = "zhanghanyun"
                case 2:
                    vc.imageName = "zhuyin"
                default:
                    vc.imageName = nil
                }
            }
    }
    


}
