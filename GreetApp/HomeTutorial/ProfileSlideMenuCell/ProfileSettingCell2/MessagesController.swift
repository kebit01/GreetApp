//
//  MessagesController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class MessagesController: UIViewController {
    
    let tLabel: UILabel = {
        let tLabel = UILabel()
               tLabel.text = " HELLO THIS IS MY \n AND Messages \n VIEW CONTROLLER"
               tLabel.numberOfLines = 3
               tLabel.font = UIFont.boldSystemFont(ofSize: 28)
               tLabel.textAlignment = .center
               tLabel.translatesAutoresizingMaskIntoConstraints = false
        return tLabel
        }()
           
           let termsButton: UIButton = {
               let tButton = UIButton(type: .system)
               //        tButton.backgroundColor = UIColor.white
            tButton.setTitleColor(UIColor.white, for: .normal)
               tButton.setTitle("PURCHASE", for: .normal)
               tButton.translatesAutoresizingMaskIntoConstraints = false
               //              tButton.addTarget(self, action: #selector(fPButtonAction1), for: .touchUpInside)
               return tButton
           }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        view.addSubview(tLabel)
        view.addSubview(termsButton)
        
        NSLayoutConstraint.activate([
            tLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        
        NSLayoutConstraint.activate([
            termsButton.topAnchor.constraint(equalTo: tLabel.bottomAnchor),
               termsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//               ,termsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        self.termsButton.addTarget(self, action: #selector(self.tButtonAction1), for: .touchUpInside)

    }
    
    @objc fileprivate func tButtonAction1(_ sender: UIButton) {

        print("this is my tButtonAction1")
        
        let waitlistController =  WaitListVC()
           self.navigationController?.pushViewController(waitlistController, animated: true)

        //        showPastOrder()

    }
}



