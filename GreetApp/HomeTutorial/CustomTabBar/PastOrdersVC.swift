//
//  PastOrdersVC.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class PastOrdersVC: UIViewController {
        
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = UIColor.purple
//        //                cv.backgroundColor = UIColor.clear
//        cv.translatesAutoresizingMaskIntoConstraints = false
//        return cv
//    }()
    
    let topOrderContainerView: UIView = {
        let topOrder = UIView()
        topOrder.backgroundColor = .blue
        topOrder.translatesAutoresizingMaskIntoConstraints = false
        return topOrder
    }()
    
    let bottomOrderContainerView: UIView = {
        let bottomOrder = UIView()
        bottomOrder.backgroundColor = .purple
        bottomOrder.translatesAutoresizingMaskIntoConstraints = false
        return bottomOrder
    }()
        
        let orderTextView: UITextView = {
            let ordertext = UITextView()
            ordertext.text = "Browse your history, to see the details on how you have earned your points!"
            ordertext.font = UIFont.boldSystemFont(ofSize: 18)
//            ordertext.backgroundColor = nil
            ordertext.backgroundColor = .red
            ordertext.textAlignment = .left
            ordertext.isEditable = false
            ordertext.isScrollEnabled = false
            ordertext.translatesAutoresizingMaskIntoConstraints = false
            return ordertext
        }()
    
         let bottomOrderTextView: UITextView = {
                let bOrdertext = UITextView()
                bOrdertext.text = "You can only aquire points with purchases made on App. Purchases made inside or through phone do not qualify for points."
                bOrdertext.font = UIFont.boldSystemFont(ofSize: 12)
    //            ordertext.backgroundColor = nil
                bOrdertext.backgroundColor = .red
                bOrdertext.textAlignment = .left
                bOrdertext.isEditable = false
                bOrdertext.isScrollEnabled = false
                bOrdertext.translatesAutoresizingMaskIntoConstraints = false
                return bOrdertext
            }()
        
        lazy var detialsButton: UIButton = {
            let detials = UIButton(type: .system)
            detials.translatesAutoresizingMaskIntoConstraints = false
            detials.backgroundColor = UIColor.yellow
            detials.setTitle("See Details", for: .normal)
            //        detials.titleLabel?.textAlignment = .left
            detials.setTitleColor(UIColor.green, for: .normal)
//            detials.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
            detials.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
            return detials
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                view.backgroundColor = .orange
//        navigationController?.navigationBar.prefersLargeTitles = true
                navigationItem.title = "Past Orders"
        
    setupTopOrderControls()
    setupBottomViewControls()

    }

    private func setupTopOrderControls() {
        
        view.addSubview(topOrderContainerView)
           
        topOrderContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        topOrderContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topOrderContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topOrderContainerView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        topOrderContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
           
        topOrderContainerView.addSubview(orderTextView)
        topOrderContainerView.addSubview(bottomOrderTextView)

        orderTextView.topAnchor.constraint(equalTo: topOrderContainerView.topAnchor, constant: 10).isActive = true
        orderTextView.leadingAnchor.constraint(equalTo: topOrderContainerView.leadingAnchor,constant: 10).isActive = true
        orderTextView.trailingAnchor.constraint(equalTo: topOrderContainerView.trailingAnchor, constant: 10).isActive = true
        orderTextView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        orderTextView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        bottomOrderTextView.topAnchor.constraint(equalTo: orderTextView.bottomAnchor, constant: 10).isActive = true
        bottomOrderTextView.leadingAnchor.constraint(equalTo: topOrderContainerView.leadingAnchor,constant: 10).isActive = true
        bottomOrderTextView.trailingAnchor.constraint(equalTo: topOrderContainerView.trailingAnchor, constant: 10).isActive = true
        bottomOrderTextView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        bottomOrderTextView.heightAnchor.constraint(equalToConstant: 60).isActive = true

        
    }
    
    private func setupBottomViewControls() {
        
        view.addSubview(bottomOrderContainerView)
        view.addSubview(detialsButton)
        
        bottomOrderContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90).isActive = true
        bottomOrderContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomOrderContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomOrderContainerView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        bottomOrderContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        detialsButton.topAnchor.constraint(equalTo: bottomOrderTextView.bottomAnchor, constant: 15).isActive = true
//        detialsButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        detialsButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        detialsButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.detialsButton.addTarget(self, action: #selector(self.dButtonAction1), for: .touchUpInside)

        
    }
    
    @objc fileprivate func dButtonAction1(_ sender: UIButton) {

        print("this is my fLButtonAction1")

//        delegate?.fLButtonAction1(sender: sender)
        
        //        let favoriteController = FavoriteController()
        //           self.navigationController?.pushViewController(favoriteController, animated: true)
        
        
        let layout = UICollectionViewFlowLayout()
             layout.scrollDirection = .horizontal
        let swipingController = SwipingController(collectionViewLayout: layout)
//           self.navigationController?.popToViewController(navDemoController, animated: true)
        self.navigationController?.pushViewController(swipingController, animated: true)
        
        
                
        
//        // code for navDemoController
//                let swipingController = SwipingController(collectionViewLayout: layout)
//
//                pushViewController(swipingController, animated: true)
//        //        present(swipingController, animated:  true, completion: {
//
//        //        })
        

            
        //        showPastOrder()

    }
    
    
}



