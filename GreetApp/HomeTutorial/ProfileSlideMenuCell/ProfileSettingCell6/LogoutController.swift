//
//  LogoutController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class LogoutController: UIViewController {
    
    let logoutImageView: UIImageView = {
          let imageView = UIImageView()
          imageView.image = UIImage(named: "sad")
          imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.backgroundColor = .red
          imageView.contentMode = .scaleAspectFit
          return imageView
      }()
    
    let tLabel: UILabel = {
        let tLabel = UILabel()
               tLabel.text = " Leaving so soon, \n to continue please \n push logout"
               tLabel.numberOfLines = 3
               tLabel.font = UIFont.boldSystemFont(ofSize: 28)
//                tLabel.backgroundColor = .orange
               tLabel.textAlignment = .center
               tLabel.translatesAutoresizingMaskIntoConstraints = false
                return tLabel
        }()

           let termsButton: UIButton = {
               let tButton = UIButton(type: .system)
            tButton.backgroundColor = UIColor.red
            tButton.setTitleColor(UIColor.white, for: .normal)
               tButton.setTitle("LOGOUT", for: .normal)
               tButton.translatesAutoresizingMaskIntoConstraints = false
                tButton.addTarget(self, action: #selector(LButtonAction1), for: .touchUpInside)
               return tButton
           }()
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .green
        view.backgroundColor = .white

        
        view.addSubview(logoutImageView)
        view.addSubview(tLabel)
        view.addSubview(termsButton)
        
        NSLayoutConstraint.activate([
            logoutImageView.topAnchor.constraint(equalTo: view.topAnchor),
//        logoutImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//        logoutImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
            logoutImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])


        NSLayoutConstraint.activate([
            tLabel.topAnchor.constraint(equalTo: logoutImageView.bottomAnchor, constant: 10),
            tLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        
        NSLayoutConstraint.activate([
            termsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            termsButton.topAnchor.constraint(equalTo: tLabel.bottomAnchor, constant: 10),
//               termsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    @objc fileprivate func LButtonAction1(_ sender: UIButton) {

        let sheet = UIAlertController(title: "Logging out?", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("this is my cancel ButtonAction1")

        }
        
        let defaultbutton = UIAlertAction(title: "Logout", style: .destructive) { (action) in
            print("this is my default button")
            
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let swipingController = SwipingController(collectionViewLayout: layout)
            self.navigationController?.pushViewController(swipingController, animated: true)
//            self.navigationController?.present(swipingController, animated: true)

        }
        
        sheet.addAction(defaultbutton)
        sheet.addAction(cancelButton)
        present(sheet, animated: true, completion: nil)

           
           }
       
    
}
