//
//  UIBezierPath+Extension.swift
//  SVGToBezier
//
//  Created by Stewart Lynch on 2020-06-02.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved.
//

import UIKit

extension UIBezierPath {
    static func calculateBounds(paths: [UIBezierPath]) -> CGRect {
        let myPaths = UIBezierPath()
        for path in paths {
            myPaths.append(path)
        }
        return (myPaths.bounds)
    }
    
    static var swiftPath: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 29.89, y: 33.05))
        shape.addCurve(to: CGPoint(x: 12.35, y: 33.25), controlPoint1: CGPoint(x: 25.22, y: 35.74), controlPoint2: CGPoint(x: 18.8, y: 36.02))
        shape.addCurve(to: CGPoint(x: 0, y: 22.69), controlPoint1: CGPoint(x: 7.12, y: 31.03), controlPoint2: CGPoint(x: 2.78, y: 27.14))
        shape.addCurve(to: CGPoint(x: 4.56, y: 25.47), controlPoint1: CGPoint(x: 1.33, y: 23.8), controlPoint2: CGPoint(x: 2.89, y: 24.69))
        shape.addCurve(to: CGPoint(x: 22.58, y: 25.48), controlPoint1: CGPoint(x: 11.23, y: 28.59), controlPoint2: CGPoint(x: 17.89, y: 28.38))
        shape.addCurve(to: CGPoint(x: 22.58, y: 25.47), controlPoint1: CGPoint(x: 22.58, y: 25.47), controlPoint2: CGPoint(x: 22.58, y: 25.47))
        shape.addCurve(to: CGPoint(x: 6.01, y: 8.23), controlPoint1: CGPoint(x: 15.9, y: 20.35), controlPoint2: CGPoint(x: 10.23, y: 13.68))
        shape.addCurve(to: CGPoint(x: 3.78, y: 5.23), controlPoint1: CGPoint(x: 5.12, y: 7.34), controlPoint2: CGPoint(x: 4.45, y: 6.23))
        shape.addCurve(to: CGPoint(x: 19.91, y: 17.46), controlPoint1: CGPoint(x: 8.9, y: 9.9), controlPoint2: CGPoint(x: 17.02, y: 15.79))
        shape.addCurve(to: CGPoint(x: 8.56, y: 3.23), controlPoint1: CGPoint(x: 13.79, y: 11.01), controlPoint2: CGPoint(x: 8.34, y: 3))
        shape.addCurve(to: CGPoint(x: 27.25, y: 18.57), controlPoint1: CGPoint(x: 18.24, y: 13.01), controlPoint2: CGPoint(x: 27.25, y: 18.57))
        shape.addCurve(to: CGPoint(x: 27.96, y: 19.01), controlPoint1: CGPoint(x: 27.55, y: 18.74), controlPoint2: CGPoint(x: 27.78, y: 18.88))
        shape.addCurve(to: CGPoint(x: 28.47, y: 17.46), controlPoint1: CGPoint(x: 28.16, y: 18.51), controlPoint2: CGPoint(x: 28.33, y: 18))
        shape.addCurve(to: CGPoint(x: 24.36, y: 0), controlPoint1: CGPoint(x: 30.03, y: 11.79), controlPoint2: CGPoint(x: 28.25, y: 5.34))
        shape.addCurve(to: CGPoint(x: 36.48, y: 24.25), controlPoint1: CGPoint(x: 33.36, y: 5.45), controlPoint2: CGPoint(x: 38.7, y: 15.68))
        shape.addCurve(to: CGPoint(x: 36.29, y: 24.93), controlPoint1: CGPoint(x: 36.42, y: 24.48), controlPoint2: CGPoint(x: 36.36, y: 24.7))
        shape.addCurve(to: CGPoint(x: 36.37, y: 25.02), controlPoint1: CGPoint(x: 36.32, y: 24.96), controlPoint2: CGPoint(x: 36.34, y: 24.99))
        shape.addCurve(to: CGPoint(x: 39.04, y: 35.37), controlPoint1: CGPoint(x: 40.82, y: 30.59), controlPoint2: CGPoint(x: 39.59, y: 36.48))
        shape.addCurve(to: CGPoint(x: 29.89, y: 33.05), controlPoint1: CGPoint(x: 36.62, y: 30.65), controlPoint2: CGPoint(x: 32.16, y: 32.09))
        shape.addLine(to: CGPoint(x: 29.89, y: 33.05))
        shape.close()
        return shape
    }
}
