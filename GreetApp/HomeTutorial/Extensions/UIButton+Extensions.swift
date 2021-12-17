//
//  UIButton+Extensions.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

// these are extensions created for the button Customization

extension UIButton {
    
    func customButton() {
        
        //        backgroundColor = UIColor.white
        layer.masksToBounds = true
        layer.shadowRadius = 12
        layer.cornerRadius = 7
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowColor = UIColor.green.cgColor
        layer.borderWidth = 0.8
        layer.borderColor = UIColor.blue.cgColor
        //        setTitle("CUSTOMIZE", for: .normal)
        //        setTitleColor(UIColor.lightGray, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        layer.masksToBounds = true
        //        translatesAutoresizingMaskIntoConstraints = false
        //        addTarget(self, action: #selector(fCButtonAction1), for: .touchUpInside)
        
    }
    
    func pulse() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.duration = 0.4
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 1
        pulse.initialVelocity = 0.1
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
        
    }
    
    //Allows didTapped to change from Follow to Unfollow in AddFriendVC
    func configure(didFolllow: Bool) {
        if didFolllow {
            self.setTitle("Following", for: .normal)
            self.setTitleColor(.black, for: .normal)
            self.layer.borderWidth = 0.5
            self.layer.borderColor = UIColor.lightGray.cgColor
            self.layer.cornerRadius = 7
            self.backgroundColor = .white
        } else {
            self.setTitle("Follow", for: .normal)
            self.setTitleColor(.white, for: .normal)
            self.layer.borderWidth = 0
            self.layer.cornerRadius = 7
            self.backgroundColor = .followBlue
            
        }
    }
    
}
