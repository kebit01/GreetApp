//
//  PushedSearchController2.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

enum selectedScope: Int {
    case cImageName = 0
    case cPrice = 1
    case cLabel = 2
}

class PushedSearchController2: UIViewController {

    let mexTableCellId = "mexTableCellId"
    let salTableCellId = "salTableCellId"
    let cheTableCellId = "cheTableCellId"

    var cCategories: [cHeader]?
    var sCategories: [sHeader]?
    var mCategories: [mHeader]?

    //testingsearchBar3 test3
    var filteredsCategories: [sHeader]?
    var filteredcCategories: [cHeader]?
    var filteredmCategories: [mHeader]?

//    //    code for SearchButton2
//    let searchBar = UISearchBar()

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MexTableCell.self, forCellReuseIdentifier: mexTableCellId)
        tableView.register(SaladTableCell.self, forCellReuseIdentifier: salTableCellId)
        tableView.register(CheeseTableCell.self, forCellReuseIdentifier: cheTableCellId)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .blue
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        cCategories = cHeader.sampleTestCategories()
        sCategories = sHeader.sampleTestCategories()
        mCategories = mHeader.sampleTestCategories()

        //testingsearchBar2/3 test2/3
        self.filteredcCategories = self.cCategories

        view.backgroundColor = .orange

        view.addSubview(tableView)

        navigationItem.title = "Search"
        //            navigationController?.hidesBarsOnSwipe = true
        //        navigationItem.backBarButtonItem?.action = nil

        // testing code for search Bar\
        let typeButton = UIImage(named: "keyboard")?.withRenderingMode(.alwaysOriginal)
        let typeBarButtonItem = UIBarButtonItem(image: typeButton, style: .plain, target: self, action: #selector(handleTypeTest))
        navigationItem.rightBarButtonItem = typeBarButtonItem

        ////        code got transfered to showSearchBarButton
        //        let testButton = UIImage(named: "keyboard")?.withRenderingMode(.alwaysOriginal)
        //        let testBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearchTest))
        //        ////         use if its only one bar button
        //        navigationItem.rightBarButtonItem = testBarButtonItem

        configureTable()

//         testing code for search Bar
        setUpNavBar()

////        testing 3 test 3
//        navigationItem.searchController = searchController

    }

    func configureTable() {

        let constraints = [
            tableView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)

        ]

        NSLayoutConstraint.activate(constraints)

        //            tableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        //            tableView.scrollIndicatorInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)

        //        self.tableView.tableHeaderView = searchBar
        //            tableView.isScrollEnabled = false

//        //       code for searchButton2
//                showSearchBarButton(shouldShow: true)

    }

    // testing code for search3 Bar3
    func setUpNavBar() {
//    lazy var searchController: UISearchController = {
        let searchBar = UISearchBar()
//        let s = UISearchController(searchResultsController: nil)
//        searchResultsUpdater = self
        searchBar.sizeToFit()
        //        searchBar.delegate = self
        //            searchBar.showsCancelButton = true
        //        search(shouldShow: true)
        //        navigationItem.rightBarButtonItem = nil
        searchBar.placeholder = "What are you looking for..."
        searchBar.becomeFirstResponder()
        searchBar.showsScopeBar = true
        searchBar.selectedScopeButtonIndex = 0
        searchBar.scopeButtonTitles = ["Electronics", "Home", "Sports"]
//        searchBar.returnKeyType = UIReturnKeyType.done
        self.tableView.tableHeaderView = searchBar
        searchBar.delegate = self

//        return
//    }()
    }

    // testing code for search Bar
    @objc func handleTypeTest() {

        let viewController = PushedSearchController2()
        navigationController?.pushViewController(viewController, animated: true)
        print("this is my handleTest Action")

    }

////    testing searchbar3 testing 3
//    func filterContentForSearchText(searchText: String, scope: String = "All") {
//        filteredsCategories = sCategories?.filter({ (sheader: sHeader) -> Bool in
//            let doesCategoryMatch = (scope == "All") || (sheader.sheaderText == scope)
//
//            if isSearchBarEmpty() {
//                return doesCategoryMatch
//            } else {
//                return doesCategoryMatch && ((sheader.sheaderText?.lowercased().contains(searchText.lowercased())) != nil)
//            }
//
//            })
//
//            tableView.reloadData()
//    }

////        testing search bar 3 test 3
//        func isSearchBarEmpty() -> Bool {
//            return searchController.searchBar.text?.isEmpty ?? true
//        }
//
//    func isFiltering() -> Bool {
//        let searchBarScopeIsFiltering = searchController.searchBar.selectedScopeButtonIndex != 0
//        return searchController.isActive && (!isSearchBarEmpty() || searchBarScopeIsFiltering)
//    }

//    //    code for searchButton2
//            @objc func handleSearchTest() {
//
//                print("this is my handleSearchTest Action")
//                searchBar.sizeToFit()
//                searchBar.delegate = self
//    //            searchBar.showsCancelButton = true
//                search(shouldShow: true)
//        //        navigationItem.rightBarButtonItem = nil
//                searchBar.becomeFirstResponder()
//                searchBar.showsScopeBar = true
//                searchBar.selectedScopeButtonIndex = 0
//                searchBar.scopeButtonTitles = ["All", "Electronics", "Home", "Sports", "Test", "Clothes"]
//
//            }

//    //   code for searchButton
//        func showSearchBarButton(shouldShow: Bool) {
//            if shouldShow {
//
////                let testButton = UIImage(named: "keyboard")?.withRenderingMode(.alwaysOriginal)
////                let testBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearchTest))
////                ////         use if its only one bar button
////                navigationItem.rightBarButtonItem = testBarButtonItem
//
//            } else {
//
//                navigationItem.rightBarButtonItem = nil
//
//            }
//        }
//
//        func search(shouldShow: Bool) {
//            showSearchBarButton(shouldShow: !shouldShow)
//            searchBar.showsCancelButton = shouldShow
//            navigationItem.titleView = shouldShow ? searchBar : nil
//        }

}

extension PushedSearchController2: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        if section == 2 {
            return "Electronics"
        }

        if section == 1 {
            return "Sports"
        }

        return "Home"
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {

        return 40
    }

    func numberOfSections(in tableView: UITableView) -> Int {

        //                     return 1
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        //        return 6

        if section == 2 {

//      filteredcCategories
            if let count = cCategories?.count {
                return count
            }

            return 0

        }

        if section == 1 {

            return 1

        }

        return 1

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 2 {

            let cell = tableView.dequeueReusableCell(withIdentifier: "cheTableCellId", for: indexPath) as! CheeseTableCell

                cell.cheader = cCategories?[indexPath.item]

            return cell
        }

        if indexPath.section == 1 {

            let cell = tableView.dequeueReusableCell(withIdentifier: "salTableCellId", for: indexPath) as! SaladTableCell

                cell.sheader = sCategories?[indexPath.item]

            return cell

        }

        let cell = tableView.dequeueReusableCell(withIdentifier: "mexTableCellId", for: indexPath) as! MexTableCell

            cell.mheader = mCategories?[indexPath.item]

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->  CGFloat {

        return 200
    }
    
}

//code for SearchButton
extension PushedSearchController2: UISearchBarDelegate {

//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        print("Search bar did begin editing")
//    }
//
//    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//        print("Search bar did end editing")
//        //        searchBar.resignFirstResponder()
//        //        return true
//    }

//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//
////        searchBartesting 4 test 4
//        searchBar.text = ""
//        searchBar.endEditing(true)
//
//        self.filteredcCategories = self.cCategories
//        self.tableView.reloadData()
//
//////        searchbartesting 2 test 2
////        //        print("Did tap cancel...")
////        //        navigationItem.titleView = nil
////        //        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearch))
////        //        searchBar.showsCancelButton = false
////        ////        took this code off testing search bar2
////        //        search(shouldShow: false)
////    }
////
////    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
////
////        ////        took this code off testing search bar2
////        //        search(shouldShow: false)
//
//    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

//        filteredsCategories = sCategories?.filter({ (sheader: sHeader) -> Bool in

        print("Search text is \(searchText)")
        
        if searchText.isEmpty {
                  self.tableView.reloadData()
              }
        
        filterTableView(ind: searchBar.selectedScopeButtonIndex, text: searchText)
        
    }
    
        func filterTableView(ind:Int,text: String) {
            switch ind {
            case selectedScope.cImageName.rawValue:
                cCategories = cCategories?.filter({ (cheader: cHeader) -> Bool in
                    return cheader.cheaderText!.contains(text)
                })
                self.tableView.reloadData()
            case selectedScope.cLabel.rawValue:
                cCategories = cCategories?.filter({ (cheader: cHeader) -> Bool in
                    return cheader.cheaderText!.contains(text)
                })
                self.tableView.reloadData()
            case selectedScope.cPrice.rawValue:
                cCategories = cCategories?.filter({ (cheader: cHeader) -> Bool in
                    return cheader.cheaderText!.contains(text)
                })
                self.tableView.reloadData()
            default:
                    print("no type")
            }
                
        }
    }

////        testing search bar 4 test 4
//        self.filteredcCategories = searchText.isEmpty ? cCategories : cCategories?.filter({ (cheader: cHeader) -> Bool in
//            return cheader.cheaderText!.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
//        })
//        self.tableView.reloadData()
//
////        testing search bar 5 testing 5
//         if searchText == "" {
//            self.tableView.reloadData()
//        }
//        else {
//            if searchBar.selectedScopeButtonIndex == 0 {
//
//            self.filteredcCategories = searchText.isEmpty ? cCategories : cCategories?.filter({ (cheader: cHeader) -> Bool in
//                return cheader.cheaderText!.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
//            })
//
//        }
//
//        }




