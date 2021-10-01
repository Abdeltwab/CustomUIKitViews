//
//  CheckMark.swift
//  CustomUIKitViews
//
//  Created by Abdeltawab Mohamed on 01/10/2021.
//

import UIKit

public class CheckMark: UIView {

    private let containerLayer = CAShapeLayer()
    public var radius = 50
    public var color = UIColor.white

    // MARK: - life Cycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    public  init(frame: CGRect , color:UIColor) {
        super.init(frame: frame)
        self.color = color
        self.setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension CheckMark{
    
    private func setupView() {
        containerLayer.frame = bounds
        self.addCheckMarkLayer()
        layer.addSublayer(containerLayer)
    }

    private func addCheckMarkLayer() {
        let checkMarkLayer = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 20 , y: 50))
        path.addLine(to: CGPoint(x: 45, y:  75))
        path.addLine(to: CGPoint(x: 70, y: 20))
        checkMarkLayer.fillColor = UIColor.clear.cgColor
        checkMarkLayer.strokeColor = color.cgColor
        checkMarkLayer.lineWidth = 5
        checkMarkLayer.path = path.cgPath
        containerLayer.addSublayer(checkMarkLayer)
    }
}


