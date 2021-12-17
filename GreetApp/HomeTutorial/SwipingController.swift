//
//  SwipingController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.

import UIKit

extension UIColor {
    static var mainPink = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
}

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "CellId"
    let loginCellId = "loginCellId"
    
    let pages: [Page] = {
        let firstPage = Page(imageName: "step-1", headerText: "Take a chance to have everything you wished for!", bodyText: "Are you ready to take a chance on acquiring everything you wished for! join now.")
        
        let secondPage = Page(imageName: "step-2", headerText: "kevo things he has the lumbre but he doesn't", bodyText: "Only Lumbre he has is the Allambre he has up his ass")
        
        let thirdPage = Page(imageName: "step-3", headerText: "Com'n shoot, just shoot you miss 100% of the shots you dont take", bodyText: "shoot this longdick up you mouth")
        
        //        Page(imageName: "IMG_6800", headerText: "What, who, where, when are we going to go hiking in an advanture again", bodyText: "we need to go smoke more fat blunts")
        
        return [firstPage, secondPage, thirdPage]
        
    }()
    
    private let demoButton: UIButton = {
        let demo = UIButton(type: .system)
        demo.setTitle("Sign up later", for: .normal)
        demo.translatesAutoresizingMaskIntoConstraints = false
        demo.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        demo.setTitleColor(.red, for: .normal)
        demo.addTarget(self, action: #selector(DemoAction), for: .touchUpInside)
        return demo
        
    }()
    
    @objc func DemoAction(){
        print("hello login, this is my Demo button being pressed")
//        let demoViewController = CustomizedTabBarController()

//            self.present(demoViewController, animated:true, completion:nil)
//        self.navigationController?.pushViewController(demoViewController, animated: true)
        
                navigationController?.popToRootViewController(animated: true)

    }
    
    private let previousButton: UIButton = {
        let pbutton = UIButton(type: .system)
        pbutton.setTitle("PREV", for: .normal)
        pbutton.translatesAutoresizingMaskIntoConstraints = false
        pbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        //        pbutton.backgroundColor = .cyan
        pbutton.setTitleColor(.black, for: .normal)
        pbutton.addTarget(self, action: #selector(handlePrev), for: .touchUpInside)
        return pbutton
        
    }()
    
    @objc private func handlePrev() {
        let nextIndex = max(pageControl.currentPage - 1, 0)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
    }
    
    private let nextButton: UIButton = {
        let nbutton = UIButton(type: .system)
        nbutton.setTitle("NEXT", for: .normal)
        //states of button normal others like highlighted, disabled, selected
        nbutton.translatesAutoresizingMaskIntoConstraints = false
        nbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        //        nbutton.backgroundColor = .cyan
        //        let pinkColor = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
        nbutton.setTitleColor(.mainPink, for: .normal)
        nbutton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        return nbutton
        
    }()
    
    @objc private func handleNext() {
            print("Trying to advance to next")
        // we are on the last page
        
        if pageControl.currentPage == pages.count {
            return
        }
        
        //we are on the second last page
        if pageControl.currentPage == pages.count - 1 {
            print("move controls off screen")
            bottomAnchor?.constant = 100
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                
                self.view.layoutIfNeeded()
                
            }, completion: nil)
            
        }
        
        
        let indexPath = IndexPath(item: pageControl.currentPage + 1, section: 0)
        pageControl.currentPage += 1
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
    }
    
    lazy var pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = self.pages.count + 1
        pc.currentPageIndicatorTintColor = .mainPink
        //        pc.backgroundColor = .yellow
        pc.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        return pc
    }()
    
    var bottomAnchor: NSLayoutConstraint?
    //    var rightAnchor: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .orange

        //        collectionView?.backgroundColor = .green
        //        collectionView?.backgroundColor = .white
        
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        //        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView?.isPagingEnabled = true
        
        //allows navigationbar to be seen
        //        navigationItem.title = "COD PRO GAMERS"
        //        navigationController?.navigationBar.isTranslucent = false
        
        //        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        //        titleLabel.textAlignment = .center
        //        titleLabel.text = "COD PRO GAMERS"
        //        titleLabel.textColor = UIColor.black
        //        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        //        navigationItem.titleView = titleLabel
        
        setupBottomControls()
        setupTopControls()
        
        registerCells()
        
    }
    
    fileprivate func registerCells() {
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(LoginCell.self, forCellWithReuseIdentifier: loginCellId)
        
    }
    
    fileprivate func setupTopControls() {
        
        view.addSubview(demoButton)
        
        if #available(iOS 11.0, *) {
            demoButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        demoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        demoButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        demoButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    fileprivate func setupBottomControls() {
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually
        
        view.addSubview(bottomControlsStackView)
        
        if #available(iOS 11.0, *) {
            bottomAnchor = bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        } else {
            // Fallback on earlier versions
        }
        bottomAnchor?.isActive = true
        //
        //        if #available(iOS 11.0, *) {
        //          bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        //        } else {
        //            // Fallback on earlier versions
        
        if #available(iOS 11.0, *) {
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        
        bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50).isActive =  true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count + 1
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == pages.count {
            let loginCell = collectionView.dequeueReusableCell(withReuseIdentifier: loginCellId, for: indexPath)
            return loginCell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        
        //            cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .orange
        //        cell.backgroundColor = .red
        
        let page = pages[indexPath.item]
        cell.page = page
        
        
        //        cell.step1ImageView.image = UIImage(named: page.imageName)
        //        cell.descriptionTextView.text = page.headerText
        
        //        let imageName = imageNames[indexPath.item]
        //        cell.step1ImageView.image = UIImage(named: imageName)
        //        cell.descriptionTextView.text = headerStrings[indexPath.item]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
        //        CGSize(width: 100, height: 100) this was before the cells exapanded into the green collection view
        
    }
    
    override  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
        pageControl.currentPage = pageNumber
        
        //        let x = targetContentOffset.pointee.x
        //        pageControl.currentPage = Int(x / view.frame.width)
        
        //we are on our last page
        if pageNumber == pages.count{
            print("animate controls off screen")
            bottomAnchor?.constant = 100
        } else {
            bottomAnchor?.constant = 0
        }
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        print(UIDevice.current.orientation.isLandscape)
        
        collectionView?.collectionViewLayout.invalidateLayout()
        
        let indexPath = IndexPath(item: pageControl.currentPage, section: 0)
        //scroll to indexPath after the rotation is going
        DispatchQueue.main.async {
            self.collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
        
    }
    
}
