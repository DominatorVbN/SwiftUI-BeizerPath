//
//  ShapeView.swift
//  SwiftUI BeizerPath
//
//  Created by dominator on 07/06/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI

struct ShapeView: Shape{
    let beizerPath: UIBezierPath
    let pathBound: CGRect
    func path(in rect: CGRect) -> Path {
        let pointScale = (rect.width >= rect.height) ? max(pathBound.height, pathBound.width) : min(pathBound.height, pathBound.width)
        let pointTransform = CGAffineTransform(scaleX: 1/pointScale, y: 1/pointScale)
        let path = Path(beizerPath.cgPath).applying(pointTransform)
        let multiplier = min(rect.width, rect.height)
        let transform = CGAffineTransform(scaleX: multiplier, y: multiplier)
        return path.applying(transform)
    }
}
