//
//  Constraints+Extensions.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

// Extension allow addConstraintsWithFormat
extension UIView {
    func addConstraintsWithFormat(format: String, view: UIView...)  {
        var viewsDictionary = [String: UIView]()
        for (index, view) in view.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options:
            NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
    //this makes sure its in CENTER
    func center(inView view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

//class CirclePath: UIView {
//
//    let shapeLayer = CAShapeLayer()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        layer.addSublayer(shapeLayer)
//
//        let path = UIBezierPath(ovalIn: bounds)
//        shapeLayer.path = path.cgPath
//        shapeLayer.lineWidth = 5
//        shapeLayer.strokeColor = UIColor.white.cgColor
//        shapeLayer.fillColor = .none
//
//    }
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}

