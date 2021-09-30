//
//  ViewController.swift
//  CustomUIKitViews
//
//  Created by Abdeltwab on 09/30/2021.
//  Copyright (c) 2021 Abdeltwab. All rights reserved.
//

import UIKit
import CustomUIKitViews

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 20, y: 50, width: 0, height: 0)
        let cv = Circle(frame: rect)
        view.addSubview(cv)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

