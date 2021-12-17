//
//  HelpSupportController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class HelpSupportController: UIViewController {
    
////    code for SearchButton
//    let searchBar = UISearchBar()
    
    let tLabel: UILabel = {
        let tLabel = UILabel()
               tLabel.text = " HELLO THIS IS MY TERMS \n AND CONDITION \n VIEW CONTROLLER"
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
        
////        for searchButton
//        setupNavBarSearch()
        
        view.backgroundColor = .purple
        
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
    
////    for searchButton
//    func setupNavBarSearch() {
//
//        searchBar.sizeToFit()
//        searchBar.delegate = self
//
//        navigationItem.title = "Search Bar"
////        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearch))
//        showSearchBarButton(shouldShow: true)
//    }
//
//    @objc func handleSearch() {
//
//              print("this is my handleTest Action")
//
////              navigationItem.titleView = searchBar
////              searchBar.showsCancelButton = true
//        search(shouldShow: true)
//
////            navigationItem.rightBarButtonItem = nil
//        searchBar.becomeFirstResponder()
//
//          }
    
    @objc fileprivate func tButtonAction1(_ sender: UIButton) {

        print("this is my tButtonAction1")
        
        let pastOrdersController = PastOrdersVC()
           self.navigationController?.pushViewController(pastOrdersController, animated: true)

        //        showPastOrder()

    }
    
////    for searchButton
//    func showSearchBarButton(shouldShow: Bool) {
//        if shouldShow {
//
//            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearch))
//
//        } else {
//
//            navigationItem.rightBarButtonItem = nil
//
//        }
//    }
//
//    func search(shouldShow: Bool) {
//        showSearchBarButton(shouldShow: !shouldShow)
//        searchBar.showsCancelButton = shouldShow
//        navigationItem.titleView = shouldShow ? searchBar : nil
//    }
//}
//
////code for SearchButton
//extension HelpSupportController: UISearchBarDelegate {
//
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        print("Search bar did begin editing")
//    }
//
//    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//         print("Search bar did end editing")
//    }
//
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//
//        //        print("Did tap cancel...")
////        navigationItem.titleView = nil
////        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearch))
////        searchBar.showsCancelButton = false
//        search(shouldShow: false)
//    }
//
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        print("Search text is \(searchText)")
//    }
}

