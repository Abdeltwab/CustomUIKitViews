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
        let chkMArk = CheckMark(frame: rect,color: .red)
        view.addSubview(chkMArk)
//        let radius = 50
//        let loader = CurvedArrow(frame: rect, arrowsCount: 2, lineWidth: 5, radius: radius)
//        view.addSubview(loader)
//        let cv = Circle(frame: rect, radius: radius, color: .green)
//        view.addSubview(cv)


    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

