//
//  HomeFeedCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit
//import StoreKit

class NavDemoController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor.soothingBlue
        
        UINavigationBar.appearance().tintColor = .black
        
        UINavigationBar.appearance().isTranslucent = false
        
        //        let navigationFont = UIFont(name: "Brush Script MT Italic", size: 18)
        //        let navigationFontAttributes = [NSAttributedString.Key.font : navigationFont]
        //        UIBarButtonItem.appearance().setTitleTextAttributes(navigationFontAttributes, for: .normal)
        
        //
        let NavBarAppearance = UINavigationBar.appearance()
        
        
        NavBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        //        NavBarAppearance.titleTextAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        
        view.backgroundColor = .orange
        //        view.backgroundColor = .soothingBlue
        
        if isLoggedIn() {
            //assume user is logged in
            //            let demoViewController = DemoViewController()
            //            viewControllers = [demoViewController]
            
            //use this if you want to use UICollectionView
            let demoViewController = DemoViewController(collectionViewLayout: UICollectionViewFlowLayout())
            viewControllers = [demoViewController]
            
        } else {
            
            perform(#selector(showSwipingController), with: nil, afterDelay: 0.01)
        }
        
    }
    
    // false show SwipingController / when true you see DemoViewController
    fileprivate func isLoggedIn() ->Bool {
        return true
        
    }
    
    @objc func showSwipingController() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let swipingController = SwipingController(collectionViewLayout: layout)
        
        pushViewController(swipingController, animated: true)
        //        present(swipingController, animated:  true, completion: {
        
        //        })
        
    }
}

//// I added this for calender
//enum MyTheme {
//    case light
//    case dark
//}

class DemoViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    ////  I added this for calender
    //    var theme = MyTheme.dark
    
    var cheaders: [cHeader]?
    var sheaders: [sHeader]?
    var mheaders: [mHeader]?
    
    //    let cellId = "cellId"
    
    let cheeseSteaksId = "cheeseSteaksId"
    let saladId = "saladId"
    let mexicanId = "mexicanId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cheaders = cHeader.sampleTestCategories()
        sheaders = sHeader.sampleTestCategories()
        mheaders = mHeader.sampleTestCategories()
        
        //                navigationItem.title = "CODPROGAMERS"
        
        navigationController?.navigationBar.isTranslucent = false
        ////        allows largetitles label color
        //        navigationController?.navigationBar.barStyle = .black
        //        navigationController?.navigationBar.tintColor = .yellow
        //        navigationController?.navigationBar.prefersLargeTitles = true
        
        //        setupMenuBar()
        setupNavBarButtons()
        setupCollectionView()
        
        
    }
    
    fileprivate func setupNavBarButtons() {
        
        let profileButton = UIImage(named: "bar-building-2")?.withRenderingMode(.alwaysOriginal)
        let profileBarButtonItem = UIBarButtonItem(image: profileButton, style: .plain, target: self, action: #selector(handleProfile))
        navigationItem.leftBarButtonItem = profileBarButtonItem
        
        //    //        code for icon in the middle
        //            let titleImageView = UIImage(named: "Mario-1")?.withRenderingMode(.alwaysOriginal)
        //            let titleView = UIImageView(image: titleImageView)
        //            titleView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        //            titleView.translatesAutoresizingMaskIntoConstraints = false
        //            titleView.contentMode = .scaleAspectFit
        //            navigationItem.titleView = titleView
        
        navigationItem.title = "CHANCE"
        
        let testButton = UIImage(named: "western")?.withRenderingMode(.alwaysOriginal)
        let testBarButtonItem = UIBarButtonItem(image: testButton, style: .plain, target: self, action: #selector(handleTest))
        //        use if its only one bar button
        navigationItem.rightBarButtonItem = testBarButtonItem
        
        //        let orderButton = UIImage(named: "sorting-options--v1")?.withRenderingMode(.alwaysOriginal)
        //        let orderBarButtonItem = UIBarButtonItem(image: orderButton, style: .plain, target: self, action: #selector(handleOrder))
        //        //        use if its only one bar button
        //        navigationItem.rightBarButtonItem = orderBarButtonItem
        
        //        let testButton = UIImage(named: "western")?.withRenderingMode(.alwaysOriginal)
        //        let testBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearchTest))
        //        ////         use if its only one bar button
        //        navigationItem.rightBarButtonItem = testBarButtonItem
        
        //        //code if you want to navButtons on navBar
        //        self.navigationItem.rightBarButtonItems = [orderBarButtonItem, testBarButtonItem]
        
        
    }
    
    @objc func handleTest() {
        
        //        let viewController = PushedSearchController()
        //        navigationController?.pushViewControllerFromRight(Controller: viewController)
        //        print("this is my handleTest Action")
        
        let viewController = PushedSearchController2()
        navigationController?.pushViewControllerFromRight(controller: viewController)
    }
    
    func setupCollectionView() {
        
        if let flowLayout = collectionView?.collectionViewLayout as?
            UICollectionViewFlowLayout {
            //            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 0
        }
        
        collectionView?.register(CheeseSteaksCell.self, forCellWithReuseIdentifier: cheeseSteaksId)
        collectionView?.register(SaladCell.self, forCellWithReuseIdentifier: saladId)
        collectionView?.register(MexicanCell.self, forCellWithReuseIdentifier: mexicanId)
        //        collectionView?.register(FeedCell.self, forCellWithReuseIdentifier: cellId)
        
        
        //        collectionView?.backgroundColor = .soothingPink
        collectionView?.backgroundColor = .cyan
        
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        
        //        collectionView?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //        collectionView?.scrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        collectionView?.isPagingEnabled = true
        
    }
    
    lazy var slideMenuLauncher5: SlideMenuLauncher5 = {
        let launcher = SlideMenuLauncher5()
        launcher.demoViewController = self
        return launcher
    }()
    
    //        let slideMenuLauncher = SlideMenuLauncher2()
    
    @objc func handleProfile() {
        
        //show slide menu
        
        slideMenuLauncher5.showSlideMenu()
        
    }
    
    func showControllerForProfileEdit(edit: Edit) {
        
        print ("Jose told me to print editsview1 shown")
        let dummyEditController = UIViewController()
        //        dummyEditController.view.backgroundColor = UIColor.magenta
        dummyEditController.navigationItem.title = edit.headerText2
        navigationController?.navigationBar.tintColor = UIColor.black
        //            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.pushViewController( dummyEditController, animated: true)
        
    }
    
    func showControllerForSetting1(setting: Setting) {
        
        print ("I am printing to see what im settingview1")
        let dummySettingsController2 = NotificationsController()
        //            dummySettingsController2.view.backgroundColor = UIColor.purple
        dummySettingsController2.navigationItem.title = setting.headerText
        navigationController?.navigationBar.tintColor = UIColor.black
        //        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.pushViewController(dummySettingsController2, animated: true)
        //        self.transitionToNew(setting)
        
    }
    
    func showControllerForSetting(setting: Setting) {
        
        print ("I am printing to see what im settingview0")
        //        let calenderController1 = UIViewController()
        //withoutcollectionview
        let calenderController1 = MessagesController()
        //withcollectionview
        //           let layout = UICollectionViewFlowLayout()
        //        let calenderController1 = CalenderController5(collectionViewLayout: layout)
        //        calenderController1.view.backgroundColor = UIColor.soothingPink
        calenderController1.navigationItem.title = setting.headerText
        navigationController?.navigationBar.tintColor = UIColor.black
        //          navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.purple]
        navigationController?.pushViewController(calenderController1, animated: true)
        //        self.transitionToNew(setting)
        
    }
    
    func showControllerForSetting2(setting: Setting) {
        
        print ("I am printing to see what im settingview2")
        let dummySettingsController3 = AccountSettingsController()
        //            dummySettingsController3.view.backgroundColor = UIColor.brown
        dummySettingsController3.navigationItem.title = setting.headerText
        navigationController?.navigationBar.tintColor = UIColor.black
        //        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.pushViewController(dummySettingsController3, animated: true)
        //        self.transitionToNew(setting)
        
    }
    
    func showControllerForSetting3(setting: Setting) {
        
        print ("I am printing to see what im settingview3")
        let dummySettingsController4 = TermsViewController()
        //            dummySettingsController4.view.backgroundColor = UIColor.blue
        dummySettingsController4.navigationItem.title = setting.headerText
        navigationController?.navigationBar.tintColor = UIColor.black
        //        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.pushViewController(dummySettingsController4, animated: true)
        //        self.transitionToNew(setting)
        
    }
    
    func showControllerForSetting4(setting: Setting) {
        
        print ("I am printing to see what im settingview4")
        //            let dummySettingsController5 = UIViewController()
        let dummySettingsController5 = HelpSupportController()
        //                   let layout = UICollectionViewFlowLayout()
        //                let dummySettingsController5 = HelpSupportController(collectionViewLayout: layout)
        //            dummySettingsController5.view.backgroundColor = UIColor.orange
        dummySettingsController5.navigationItem.title = setting.headerText
        navigationController?.navigationBar.tintColor = UIColor.black
        //        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.pushViewController(dummySettingsController5, animated: true)
        //        self.transitionToNew(setting)
        
    }
    
    func showControllerForSetting5(setting: Setting) {
        
        print ("I am printing to see what im settingview3")
        let dummySettingsController6 = LogoutController()
        //                dummySettingsController6.view.backgroundColor = UIColor.mainPink
        dummySettingsController6.navigationItem.title = setting.headerText
        navigationController?.navigationBar.tintColor = UIColor.black
        //        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.pushViewController(dummySettingsController6, animated: true)
        //        self.transitionToNew(setting)
        
    }
    
    
    //        this code was already not displayed
    //    func showControllerForPurchase(purchase: Purchase) {
    //              print ("I am printing to see what im settingview5")
    //              let dummyControllerForPurchase = UIViewController()
    //              dummyControllerForPurchase.view.backgroundColor = UIColor.orange
    //              dummyControllerForPurchase.navigationItem.title = purchase.headerText3
    //              navigationController?.navigationBar.tintColor = UIColor.white
    //              //            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    //              navigationController?.pushViewController(dummyControllerForPurchase, animated: true)
    //      //        self.transitionToNew(setting)
    //
    //          }
    
    ////code for customizeLauncher
    //    lazy var customizeLauncher: CustomizeLauncher = {
    //        let launcher = CustomizeLauncher()
    //        launcher.demoViewController = self
    //        return launcher
    //    }()
    //
    //
    //         let orderingLauncher = OrderLauncher()
    //
    //    @objc func handleOrder() {
    //
    //        customizeLauncher.showCustom()
    //
    //    }
    
    func showMenuDetailForcPhoto(cphoto: cPhoto ) {
        
        let layout = UICollectionViewFlowLayout()
        let cheeseSteakViewController = CheeseSteakViewController(collectionViewLayout: layout)
        cheeseSteakViewController.cphoto = cphoto
        //        cheeseSteakController.navigationItem.title = cphoto.cImageName
        //        cheeseSteakController.navigationItem.title = photo.headerText
        //        cheeseSteakController.view.backgroundColor = UIColor.lightGray
        navigationController?.pushViewController(cheeseSteakViewController, animated: true)
        //        navigationController?.present(menuDetailController, animated: true)
        
    }
    
    func showMenuDetailForsPhoto(sphoto: sPhoto ) {
        
        let layout = UICollectionViewFlowLayout()
        let saladViewController = SaladViewController(collectionViewLayout: layout)
        saladViewController.sphoto = sphoto
        //        menuDetailController.navigationItem.title = sphoto.sLabel
        //        menuDetailController.navigationItem.title = sphoto.sheaderText
        //        menuDetailController.navigationItem.title = photo.headerText
        //        menuDetailController.view.backgroundColor = UIColor.darkGray
        //        SaladViewController.sphoto = sphoto
        navigationController?.pushViewController(saladViewController, animated: true)
        //        navigationController?.present(menuDetailController, animated: true)
        
    }
    
    func showMenuDetailFormPhoto(mphoto: mPhoto ) {
        
        let layout = UICollectionViewFlowLayout()
        let mexicanViewController = MexicanViewController(collectionViewLayout: layout)
        mexicanViewController.mphoto = mphoto
        //         mexicanViewController.navigationItem.title = mphoto.mImageName
        //        mexicanViewController.navigationItem.title = photo.headerText
        //        mexicanViewController.view.backgroundColor = UIColor.purple
        //        mexicanViewController.mphoto = mphoto
        navigationController?.pushViewController(mexicanViewController, animated: true)
        //        navigationController?.present(menuDetailController, animated: true)
        
    }
    
    //    @objc func handlePurchase() {
    //
    //        print("this is my handlePurchase Action")
    //
    //        let LoginController = PastOrderController()
    //        present(LoginController, animated: true, completion: nil)
    //    }
    //
    //     @objc func showPastOrder() {
    //
    //            print("this is my fLButtonAction1 Action")
    //
    //                 let pastOrderController = PastOrderController()
    //     present(pastOrderController, animated: true, completion: nil)
    //
    //        }
    
    
    //    lazy var menuBar3: MenuBar3 = {
    //        let mb = MenuBar3()
    //
    //        //code to allow swiping left right on menu bar
    //        mb.demoViewController = self
    //        return mb
    //    }()
    //
    //    private func setupMenuBar() {
    //
    //        view.addSubview(menuBar3)
    //        view.addConstraintsWithFormat(format: "H:|[v0]|", view: menuBar3)
    //        view.addConstraintsWithFormat(format: "V:|[v0(50)]", view: menuBar3)
    //
    //    }
    //
    //    func scrollToMenuIndex(menuIndex: Int) {
    //
    //        let indexPath = IndexPath(item: menuIndex, section: 0)
    //        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    //
    //    }
    //
    //    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
    //
    //        let index = (targetContentOffset.pointee.x / view.frame.width)
    //
    //        let indexPath = IndexPath(item: Int(index), section: 0)
    //        CalendarMenuBar.collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
    //
    //        print (indexPath.item)
    //
    //    }
    //
    //    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
    //
    //        CalendarMenuBar.horizontalBarLeftAnchorConstraint?.constant = scrollView.contentOffset.x / 2
    //    }
    
    //    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //
    //        return 2
    //
    //    }
    
    
    //    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    //
    //            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! FeedCell
    //
    //        // supposed to show here
    ////                    cell.demoViewController = self
    //
    //
    ////                        cell.backgroundColor = UIColor.darkGray
    //
    //                    cell.backgroundColor = indexPath.item % 2 == 0 ? .purple : .green
    //
    //            //                   let colors: [UIColor] = [.orange, .green, .purple]
    //            //                   cell.backgroundColor = colors[indexPath.item]
    //
    //            return cell
    //        }
    //
    //        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //
    //             // before was return CGSize(width: view.frame.width , height: view.frame.height)
    ////            return CGSize(width: view.frame.width , height: view.frame.height - 180)
    //
    //            return CGSize(width: view.frame.width , height: view.frame.height - 120)
    //
    //        }
    //
    // take off code to allow swipe between sections horizontally
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 3
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 2 {
            
            //return 6
            if let count = cheaders?.count {
                return count
            }
            
            return 0
            
        }
        
        if section == 1 {
            
            return 1
            
        }
        
        return 1
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 2 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cheeseSteaksId", for: indexPath) as! CheeseSteaksCell
            
            cell.cheader = cheaders?[indexPath.item]
            
            cell.demoViewController = self
            
            //            cell.backgroundColor = UIColor.darkGray
            
            //        cell.backgroundColor = indexPath.item % 2 == 0 ? .yellow : .orange
            
            //                   let colors: [UIColor] = [.orange, .green, .purple]
            //                   cell.backgroundColor = colors[indexPath.item]
            
            return cell
        }
        //
        //        }
        //
        if indexPath.section == 1 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "saladId", for: indexPath) as! SaladCell
            
            cell.sheader = sheaders?[indexPath.item]
            //
            cell.demoViewController = self
            
            //            cell.backgroundColor = UIColor.darkGray
            
            //        cell.backgroundColor = indexPath.item % 2 == 0 ? .yellow : .orange
            
            //                   let colors: [UIColor] = [.orange, .green, .purple]
            //                   cell.backgroundColor = colors[indexPath.item]
            
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mexicanId", for: indexPath) as! MexicanCell
        
        cell.mheader = mheaders?[indexPath.item]
        //
        cell.demoViewController = self
        
        //            cell.backgroundColor = UIColor.darkGray
        
        //        cell.backgroundColor = indexPath.item % 2 == 0 ? .yellow : .orange
        
        //                   let colors: [UIColor] = [.orange, .green, .purple]
        //                   cell.backgroundColor = colors[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // with menuBar
        //        return CGSize(width: view.frame.width , height: 280 - 50)
        return CGSize(width: view.frame.width , height: 285 - 40)
        
    }
    
}

