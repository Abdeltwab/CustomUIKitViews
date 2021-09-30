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
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CurvedArrow {
    private func setupView() {
        containerLayer.frame = bounds
        addArrowsViews()
        layer.addSublayer(containerLayer)
    }

    private func addArrowsViews() {
        for i in 0 ..< arrowsCount {
            addArrowLayer(i: i)
        }
    }

    private func addArrowLayer(i: Int) {
        let layer = getArrowLayer()
        setArrowStartAngle(for: i)
        setArrowEndAngle(for: i)
        layer.path = getArrowPath()
        containerLayer.addSublayer(layer)
    }

    private func getArrowLayer() -> CAShapeLayer {
        let layer = CAShapeLayer()
        configureLayer(layer)
        return layer
    }

    private func getArrowPath() -> CGPath {
        let diameter = 2 * CGFloat.pi
        let radius = CGFloat(180)
        let path = UIBezierPath()
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: diameter * startAngle,
                    endAngle: diameter * endAngle,
                    clockwise: true)
        let currentPoint = path.currentPoint
        let p = CGPoint(x: currentPoint.x, y: currentPoint.y)
        path.move(to: p)
        path.close()
        return path.cgPath
    }

    private func configureLayer(_ layer: CAShapeLayer) {
        layer.lineWidth = CGFloat(lineWidth)
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = UIColor.red.cgColor
    }
}

// MARK: - Helpers

extension CurvedArrow {
    private func setArrowStartAngle(for arrowNumber: Int) {
        startAngle = arrowNumber == 0 ? CGFloat(arrowsCount / arrowsCount) : CGFloat(arrowNumber) / CGFloat(arrowsCount)
    }

    private func setArrowEndAngle(for arrowNumber: Int) {
        endAngle = CGFloat(Double(arrowNumber) + 0.95) / CGFloat(arrowsCount)
    }

    private func getArrowCenter() -> CGPoint {
        let center = CGPoint(x: containerLayer.bounds.width / 2,
                             y: containerLayer.bounds.height / 2)
        return center
    }
}
