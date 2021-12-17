//
//  GreetAppApp.swift
//  GreetApp
//
//  Created by kevin ortiz on 12/16/21.
//

//import UIKit
////import Firebase
////import FirebaseCore // added this code becuase it didnt allow me to start project on Xcode??
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        // Override point for customization after application launch.
//        FirebaseApp.configure() //we added this configuration so that it connects to firebase
//        return true
//
//    }
//
//    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }
//
//
//}

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow (frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        //        UITabBar.appearance().shadowImage = UIImage()
        //        UITabBar.appearance().backgroundImage = UIImage()
        //        UITabBar.appearance().barTintColor = .soothingBlue
        //        UITabBar.appearance().tintColor = .red
        
        //        window?.rootViewController = NavDemoController3()
        
        window?.rootViewController = CustomizedTabBar()
        //        window?.rootViewController = tabBar
        
        application.statusBarStyle = .lightContent
        
        let statusBackgroundView = UIView()
        statusBackgroundView.backgroundColor = UIColor.soothingBlue
        //        statusBackgroundView.backgroundColor = UIColor.magenta
        
        window?.addSubview(statusBackgroundView)
        window?.addConstraintsWithFormat(format: "H:|[v0]|", view: statusBackgroundView)
        window?.addConstraintsWithFormat(format: "V:|[v0(20)]", view: statusBackgroundView)
        
        return true
        
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
}

//extension AppDelegate: AnimatedTabBarDelegate {
//    func tabBar(_ tabBar: AnimatedTabBar, itemFor index: Int) -> AnimatedTabBarItem {
//        return items[index]
//    }
//
//    func initialIndex(_ tabBar: AnimatedTabBar) -> Int? {
//        return 0
//    }
//
//    var numberOfItems: Int {
//        return items.count
//    }
//
//}

//extension UIImage {
//    func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
//        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
//        UIGraphicsBeginImageContextWithOptions(size, false, 0)
//        color.setFill()
//        UIRectFill(rect)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        return image!
//    }
//}

//extension UIImage {
//    func getColoredImage(color: UIColor, size: CGSize) -> UIImage {
//           let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
//           UIGraphicsBeginImageContextWithOptions(size, false, 0)
//           color.setFill()
//           UIRectFill(rect)
//           guard let image:UIImage = UIGraphicsGetImageFromCurrentImageContext() else { return UIImage() }
//           UIGraphicsEndImageContext()
//           return image
//       }
//}

