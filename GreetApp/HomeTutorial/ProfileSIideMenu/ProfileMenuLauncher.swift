//
//  ProfileMenuLauncher.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

//import UIKit
//
//class Setting: NSObject {
//    let imageName: String
//    let headerText: String
//
//    init(headerText: String, imageName: String) {
//        self.headerText = headerText
//        self.imageName = imageName
//    }
//}
//
//class Edit: NSObject {
//    let imageName2: String
//    let headerText2: String
//
//    init(headerText2: String, imageName2: String) {
//        self.headerText2 = headerText2
//        self.imageName2 = imageName2
//    }
//}
//
////this is the profileMenu
//class ProfileMenuLauncher: NSObject, UICollectionViewDataSource,
//UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//        
//    let pBlackView = UIView()
//
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = UIColor.soothingBlue
////        cv.backgroundColor = UIColor.soothingPink
//        return cv
//    }()
//
//    let cellId = "CellId"
//    let slideId = "SlideId"
//    let profileId = "ProfileId"
//    
//    let settings = [
//        Setting(headerText: "Notifications", imageName: "notification.png"),
//        Setting(headerText: "Messages", imageName: "message.png"),
//        Setting(headerText:  "Account & Settings", imageName: "settings.png"),
//        Setting(headerText: "Terms & Privacy", imageName: "policy-icon"),
//        Setting(headerText: "Help & Support", imageName: "question-mark"),
//        Setting(headerText:  "Logout", imageName: "exit"),
//        Setting(headerText: "Cancel", imageName: "cancel")
//    ]
//    
//    let edits = [
//        Edit(headerText2: "Profile", imageName2: "profile-1")
//        
//        //        ,
//        //        Slide(imageName: "email-1", headerText: "Messages"),
//        //        Slide(imageName: "notification", headerText: "Notifications"),
//      
//    ]
//    
//    var demoViewController: HomeView2?
//
//    func showSlideMenu() {
//
//        print("this is my slide menu")
//        //show menu
//
//        if let window = UIApplication.shared.keyWindow {
//
//            pBlackView.backgroundColor = UIColor.init(white: 0, alpha: 0.5)
//
//            pBlackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(profileDismiss)))
//
//            window.addSubview(pBlackView)
//            window.addSubview(collectionView)
//
//            //            let height: CGFloat = (window.frame.height * 0.75)
//            //            let y = window.frame.height - height
//
//            let width: CGFloat = (window.frame.width / 2) + (window.frame.width / 4)
//            collectionView.frame = CGRect(x: 0, y: 0, width: width, height: window.frame.height)
//
//            pBlackView.frame = window.frame
//            pBlackView.alpha = 0
//
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
//
//                self.pBlackView.alpha = 1
//
//                self.collectionView.frame = CGRect(x: 0, y: 0, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
//
//            }, completion: nil)
//            
//        }
//
//    }
//
//
//    @objc func profileDismiss() {
//        
//        print ("this dismisses my slide menu")
//        
//        UIView.animate(withDuration: 0.5) {
//            self.pBlackView.alpha = 0
//
//            if let window = UIApplication.shared.keyWindow {
//                self.collectionView.frame = CGRect(x: 0, y: window.frame.height,
//                                                   width: self.collectionView.frame.width,
//                                                   height: self.collectionView.frame.height)
//            }
//
//        }
//
//    }
//    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//       
//        return 2
//    
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        if section == 1 {
//
//        return  settings.count
//
//    }
//    
//        return edits.count
//
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        if indexPath.section == 1 {
//
//    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: slideId, for: indexPath) as! ProfileMenuCell
//
//         let setting = settings[indexPath.item]
//         cell.setting = setting
//
//         //        cell.backgroundColor = UIColor.red
//
//         //cell.backgroundColor = indexPath.item % 2 == 0 ? .blue : .green
//        
//         return cell
//     }
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: profileId, for: indexPath) as! ProfileCell
//
//        let edit = edits[indexPath.item]
//        cell.edit = edit
//        
//        //        cell.backgroundColor = UIColor.red
//
//        //cell.backgroundColor = indexPath.item % 2 == 0 ? .blue : .green
//                
//        return cell
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//    if indexPath.section == 1 {
//        
//        return CGSize(width: collectionView.frame.width , height: 70)
//        
//    }
//    
//    return CGSize(width: collectionView.frame.width , height: 240)
//    
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        
//        if section == 1 {
//
//        return UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
//
//    }
//        
//        return UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
//
//    }
//
////    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
////        return 0
////    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        if indexPath.section == 0 {
//            
//            print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
//            print("I am printing when clicking edits1")
//
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
//
//                self.pBlackView.alpha = 0
//
//                if let view = UIApplication.shared.keyWindow {
//                    self.collectionView.frame = CGRect(x: 0, y: view.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
//                }
//
//            }) {  (completion:  Bool) in
//
//                let edit = self.edits[indexPath.item]
//                if edit.headerText2 != "" {
//                    self.demoViewController?.showControllerForProfileEdit(edit: edit)
//
//                }
//                
//            }
//            
//        }
//            
//        else if indexPath.section == 1 {
//
//         print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
//        print ("I am printing to see what im printing setting1")
//
//
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
//
//            self.pBlackView.alpha = 0
//
//            if let view = UIApplication.shared.keyWindow {
//                self.collectionView.frame = CGRect(x: 0, y: view.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
//            }
//            
//        }) {  (completion:  Bool) in
//            
//            let setting = self.settings[indexPath.item]
//            if setting.headerText != "" && setting.headerText != "Notifications" && setting.headerText != "Account & Settings" && setting.headerText != "Terms & Privacy" && setting.headerText != "Help & Support" && setting.headerText != "Logout" && setting.headerText != "Cancel" {
//                self.demoViewController?.showControllerForSetting(setting: setting)
//                
//            }
//            if setting.headerText != "" && setting.headerText != "Messages" && setting.headerText != "Account & Settings" && setting.headerText != "Terms & Privacy" && setting.headerText != "Help & Support" && setting.headerText != "Logout" && setting.headerText != "Cancel" {
//                self.demoViewController?.showControllerForSetting1(setting: setting)
//                
//            }
//            if setting.headerText != "" && setting.headerText != "Messages" && setting.headerText != "Notifications" && setting.headerText != "Terms & Privacy" && setting.headerText != "Help & Support" && setting.headerText != "Logout" && setting.headerText != "Cancel" {
//                self.demoViewController?.showControllerForSetting2(setting: setting)
//                
//            }
//            
//            if setting.headerText != "" && setting.headerText != "Messages" && setting.headerText != "Notifications" && setting.headerText != "Account & Settings" && setting.headerText != "Help & Support" && setting.headerText != "Logout" && setting.headerText != "Cancel" {
//                self.demoViewController?.showControllerForSetting3(setting: setting)
//                
//            }
//            
//            if setting.headerText != "" && setting.headerText != "Messages" && setting.headerText != "Notifications" && setting.headerText != "Account & Settings" && setting.headerText != "Terms & Privacy" && setting.headerText != "Logout" && setting.headerText != "Cancel" {
//                self.demoViewController?.showControllerForSetting4(setting: setting)
//                
//            }
//            
//            if setting.headerText != "" && setting.headerText != "Messages" && setting.headerText != "Notifications" && setting.headerText != "Account & Settings" && setting.headerText != "Terms & Privacy" && setting.headerText != "Help & Support" && setting.headerText != "Cancel" {
//                       self.demoViewController?.showControllerForSetting5(setting: setting)
//                       
//            }
//            
//            }
//            
//        }
//        
//    }
//
//    override init() {
//        super.init()
//
//
//        collectionView.dataSource = self
//        collectionView.delegate = self
//
//        collectionView.register(ProfileMenuCell.self, forCellWithReuseIdentifier: slideId)
//        collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: profileId)
//
//    }
//
//}
//
//////this allows ProfileBacViewController on HomeView2 swipingController perform protocol
////extension ProfileMenuLauncher: ProfileBackToHomeDelegate {
////
////    func thisISAMFTEST() {
////
////        print("is anything happening 123123")
////
////        self.profileDismiss1()
////
////    }
////
////}
//
