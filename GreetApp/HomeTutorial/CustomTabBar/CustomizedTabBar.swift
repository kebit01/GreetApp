//
//  CustomizedTabBar.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class CustomizedTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        tabBar.barTintColor = .soothingBlue
//        tabBar.tintColor = .black
        tabBar.isTranslucent = false

//        UINavigationBar.appearance().prefersLargeTitles = true
        
        let navigationController = NavDemoController()
        navigationController.title = "NewsFeed"
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "icons8-taco-16").withRenderingMode(.alwaysOriginal)
        navigationController.tabBarItem.selectedImage = #imageLiteral(resourceName: "icons8-beef-17").withRenderingMode(.alwaysOriginal)
//        navigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

//        let pastOrderController = DemoViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let watchlistController = WatchListVC()
        let secondNavigationController = UINavigationController(rootViewController: watchlistController)
        secondNavigationController.title = "WatchList"
        secondNavigationController.tabBarItem.image =  #imageLiteral(resourceName: "icons8-taco-16").withRenderingMode(.alwaysOriginal)
        secondNavigationController.tabBarItem.selectedImage =  #imageLiteral(resourceName: "icons8-taco-16").withRenderingMode(.alwaysOriginal)
//        secondNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)


//        let favoriteController = DemoViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let pastOrdersController = PastOrdersVC()
        let thirdNavigationController = UINavigationController(rootViewController: pastOrdersController)
        thirdNavigationController.title = "Past Orders"
        thirdNavigationController.tabBarItem.image = UIImage(named: "toggle-off")?.withRenderingMode(.alwaysOriginal)
//        navigationController.tabBarItem.image = #imageLiteral(resourceName: "angry").withRenderingMode(.alwaysOriginal)
        thirdNavigationController.tabBarItem.selectedImage = UIImage(named: "toggle-off-2")?.withRenderingMode(.alwaysOriginal)


        //        let pastOrderController = DemoViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let waitlistController = WaitListVC()
        let fourthNavigationController = UINavigationController(rootViewController: waitlistController)
        fourthNavigationController.title = "WaitList"
        fourthNavigationController.tabBarItem.image =  #imageLiteral(resourceName: "icons8-hamburger-16").withRenderingMode(.alwaysOriginal)
        fourthNavigationController.tabBarItem.selectedImage =  #imageLiteral(resourceName: "icons8-taco-16").withRenderingMode(.alwaysOriginal)
//        fourthNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        //        let pastOrderController = DemoViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let postController = TestVC()
        let fifthNavigationController = UINavigationController(rootViewController: postController)
        fifthNavigationController.title = "Camera"
        fifthNavigationController.tabBarItem.image =  #imageLiteral(resourceName: "icons8-beef-16").withRenderingMode(.alwaysOriginal)
        fifthNavigationController.tabBarItem.selectedImage =  #imageLiteral(resourceName: "icons8-steak-16").withRenderingMode(.alwaysOriginal)
//        fifthNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

        viewControllers = [navigationController, secondNavigationController, thirdNavigationController, fourthNavigationController, fifthNavigationController]
        
        let numberOfTabs = CGFloat((tabBar.items?.count)!)
        let tabBarSize = CGSize(width: tabBar.frame.width / numberOfTabs, height: tabBar.frame.height * 1.7)
        tabBar.selectionIndicatorImage = UIImage.imageWithColor(color: .yellow, size: tabBarSize)

    }

}

extension UIImage {
    class func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
