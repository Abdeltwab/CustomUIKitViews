//
//  CurvedArrow.swift
//  CustomUIKitViews
//
//  Created by Abdeltawab Mohamed on 30/09/2021.
//

import UIKit

class CurvedArrow: UIView {
    // MARK: - Variables

    private let containerLayer = CAShapeLayer()
    private var startAngle = CGFloat()
    private var endAngle = CGFloat()
    private var arrowDirection = false
    var arrowsCount = 0
    var lineWidth = 0


    // MARK: - life Cycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CurvedArrow {
    
    private func setupView(){
        containerLayer.frame = self.bounds
        self.addArrowsLayer()
        self.layer.addSublayer(containerLayer)

    }
    
    private func addArrowsLayer(){
        
    }
}



//MARK: - Helpers
extension CurvedArrow {
    
    private func setArrowStartAngle(for arrowNumber :Int){
        self.startAngle = arrowNumber == 0 ? CGFloat(arrowsCount / arrowsCount) : CGFloat(arrowNumber) / CGFloat(arrowsCount)
    }
    
    private func setArrowEndAngle(for arrowNumber:Int) {
        self.endAngle = CGFloat(Double(arrowNumber) + 0.95) / CGFloat(arrowsCount)
    }
    
    private func getArrowCenter() -> CGPoint {
        let center = CGPoint(x: containerLayer.bounds.width / 2,
                             y: containerLayer.bounds.height / 2)
        return center
    }
}
