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
        
        let rect = CGRect(x: 50, y: 50, width: 0, height: 0)
        let arrowsView = CurvedArrow(frame: rect)
        let circleView = Circle(frame: rect)
        let checkMarkView = CheckMark(frame: rect)
        
        view.addSubview(arrowsView)
        view.addSubview(circleView)
        view.addSubview(checkMarkView)



    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

