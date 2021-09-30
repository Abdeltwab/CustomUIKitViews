//
//  Circle.swift
//  CustomUIKitViews
//
//  Created by Abdeltawab Mohamed on 01/10/2021.
//

import UIKit

public class Circle: UIView {
    // MARK: - Variables

    private let containerLayer = CAShapeLayer()
    public var radius = 50
    public var color = UIColor.green

    // MARK: - life Cycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }

    public init(frame: CGRect, radius:Int,color:UIColor) {
        super.init(frame: frame)
        self.color = color
        self.radius = radius
        self.setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension Circle{
    
    private func setupView() {
        containerLayer.frame = bounds
        self.addCircleLayer()
        layer.addSublayer(containerLayer)
    }

    private func addCircleLayer() {
        let diameter = CGFloat(2 * radius)
        let shapeLayer = CAShapeLayer()
        let path = UIBezierPath(ovalIn: CGRect(x:center.x, y: center.y, width: diameter, height: diameter))
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = color.cgColor
        containerLayer.addSublayer(shapeLayer)
    }
}

