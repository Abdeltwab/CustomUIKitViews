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
        
        let rect = CGRect(x: 20, y: 20, width: 400, height: 400)
       // let cv = CurvedArrow(frame: rect, arrowsCount: 2, lineWidth: 10, radius: 50)
        let cv = CurvedArrow(frame: rect)
        view.addSubview(cv)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

