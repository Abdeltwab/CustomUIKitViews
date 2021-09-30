//
//  CurvedArrow.swift
//  CustomUIKitViews
//
//  Created by Abdeltawab Mohamed on 30/09/2021.
//

import UIKit

class CurvedArrow: UIView {
    // MARK: - Variables

    private let mainLayer = CAShapeLayer()
    private var startAngle = CGFloat()
    private var endAngle = CGFloat()
    private var arrowDirection = false
    var arrowsCounter = 0
    var lineWidth = 0


    // MARK: - life Cycle

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CurvedArrow {
}
