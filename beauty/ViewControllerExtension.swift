//
//  ViewControllerExtension.swift
//  beauty
//
//  Created by 华润明 on 15/3/12.
//  Copyright (c) 2015年 华润明. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beaauties.count
    }
    
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return beaauties[row]
    }
}