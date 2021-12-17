//
//  Navigation+Constraints.swift
//  GreetApp
////  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

//hides navigationBar transparent
extension UINavigationController {
    
    func hideNavigationItemBackground() {
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        self.view.backgroundColor = UIColor.clear
    }
    
    func pushViewControllerFromLeft(controller: UIViewController) {
           let transition = CATransition()
           transition.duration = 0.5
           transition.type = CATransitionType.push
           transition.subtype = CATransitionSubtype.fromLeft
           transition.timingFunction =
               CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
           view.window!.layer.add(transition, forKey: kCATransition)
           pushViewController(controller, animated: false)
           
       }
    
    func pushViewControllerFromRight(controller: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction =
            CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        pushViewController(controller, animated: false)
        
    }
    
    func pushViewControllerFromBottom(controller: UIViewController) {
         let transition = CATransition()
         transition.duration = 0.5
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromBottom
         transition.timingFunction =
             CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
         view.window!.layer.add(transition, forKey: kCATransition)
         pushViewController(controller, animated: false)
         
     }
    
    func popViewControllerToLeft() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction =
            CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        popViewController(animated: false)
    }
    
//        func handlemTest() {
//
//    //          // present UICollectionViewController
//    //                let layout = UICollectionViewFlowLayout()
//    //                       let mexicanViewController = UploadViewController(collectionViewLayout: layout)
//    //                           self.navigationController?.pushViewController(mexicanViewController, animated: true)
//
//            //present UIViewController
//                                          let mexicanViewController = UploadPhotoController()
//                              self.navigationController?.pushViewController(mexicanViewController, animated: true)
//
//          }
    
}
