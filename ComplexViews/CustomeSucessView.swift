//
//  CustomeSucessView.swift
//  CustomUIKitViews
//
//  Created by Abdeltawab Mohamed on 01/10/2021.
//

import UIKit

public class CustomeSucessView: UIView {
        
    public var SucessViewColor = UIColor.green
    public var checkMarkColor = UIColor.red
    public var arrowsColor = UIColor.blue
   
    public var radius = 50
    public var arrowsCount = 2

    // MARK: - life Cycle
    public init(){
        let rect = CGRect(x: 50, y: 50, width: 0, height: 0)
        super.init(frame: rect)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupBasicCustomeSucessView(){
        let rect = CGRect(x: 50, y: 50, width: 0, height: 0)
        let arrowsView = CurvedArrow(frame: rect)
        let circleView = Circle(frame: rect)
        let checkMarkView = CheckMark(frame: rect)
        
        self.addSubview(arrowsView)
        self.addSubview(circleView)
    }
    
//    public  init(frame: CGRect , color:UIColor) {
//        super.init(frame: frame)
//        self.color = color
//        self.setupView()
//    }

//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }


}
