//
//  Textfield+Extensions.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

// these are extensions created for the textfield Customization
extension UITextField {
    
    func shake(horizontally: CGFloat = 0, Vertically: CGFloat = 0) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - horizontally, y: self.center.y - Vertically ))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + horizontally, y: self.center.y + Vertically ))
        
        self.layer.add(animation, forKey: "position")
    }
    
    func customTextfield() {
    
            let soothingGrass = (UIColor(red: 0/255, green: 148/255, blue: 50/255, alpha: 1))
            let soothingMarine = (UIColor(red: 6/255, green: 82/255, blue: 221/255, alpha: 1))
        
        self.backgroundColor = UIColor.yellow
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.8
        self.layer.borderColor = soothingGrass.cgColor
        
        self.layer.shadowColor = soothingMarine.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 12
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        
    }
    
    func unCustomTextfield(backGroundColor : UIColor ) {
        
        self.backgroundColor = backGroundColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 2
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }
}

