//
//  SearchController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

//import UIKit
//
//class SearchController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    // BaseCell, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
//    
//    //code for searchBar
//    let searchController = UISearchController()
//    
//    //TESTING THIS OUT
//    var theaders: [tHeader]?
//    
//    //code for searchBar
//    var filteredtheaders: [tHeader]!
//    
//    let searchId = "searchId"
//    
//    //    var demoViewController: HomeView2?
//    
//    lazy var tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.register(SearchCell.self, forCellReuseIdentifier: searchId)
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.backgroundColor = .blue
//        return tableView
//    }()
//    
//    private let mexicanId2 = "mexicanId2"
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
////    //this for CollectionView
////    override func setupViews() {
////        super.setupViews()
//    
//        theaders = tHeader.sampleTestCategories()
//        
//        //code for searchBar
//        filteredtheaders = theaders
//        
//        //        backgroundColor = .orange
//        //        backgroundColor = UIColor.soothingPink
//        
//        view.addSubview(tableView)
// 
//        configureTable()
//        setUpNavBar()
//        initSearch()
//        
//    }
//    
//func setUpNavBar() {
//            
//            navigationItem.title = "Search for Items"
//    
//             let typeButton = UIImage(named: "sorting")?.withRenderingMode(.alwaysOriginal)
//             let typeBarButtonItem = UIBarButtonItem(image: typeButton, style: .plain, target: self, action: #selector(handleAddFriend))
//             navigationItem.rightBarButtonItem = typeBarButtonItem
//    
//         }
//    
//        @objc func handleAddFriend() {
//    
//            print("this is my handleTest Sorting")
//            
////            let viewController =  AddFriendVC()
////            navigationController?.pushViewController(viewController, animated: true)
////            navigationController?.navigationBar.tintColor = UIColor.black
//    
//        }
//    
//    func configureTable() {
//        
//        let constraints = [
//            tableView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            tableView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            tableView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            tableView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//            
//        ]
//        
//        NSLayoutConstraint.activate(constraints)
//        
//    }
//    
//    func initSearch() {
//        searchController.loadViewIfNeeded()
//        searchController.searchResultsUpdater = self
//        searchController.obscuresBackgroundDuringPresentation = false
//        searchController.searchBar.placeholder = "Search for Items..."
//        searchController.searchBar.enablesReturnKeyAutomatically = false
//        definesPresentationContext = true
//        
//        navigationItem.searchController = searchController
//        navigationItem.hidesSearchBarWhenScrolling = false
//        searchController.searchBar.scopeButtonTitles = ["All", "Sports", "Entertainment", "Electronics", "Stonks"]
//        searchController.searchBar.delegate = self
//        
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//        if(searchController.isActive)
//        {
//            return filteredtheaders!.count
//        }
//        return theaders!.count
//    }
//    
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "searchId", for: indexPath) as! SearchCell
//        
//        //            cell.fheader = fheaders?[indexPath.item]
//        
//        //TOOK THIS OFF
//        if(searchController.isActive)
//        {
//            cell.theader = filteredtheaders?[indexPath.row]
//        } else {
//            cell.theader = theaders?[indexPath.row]
//            
//        }
//        
//        return cell
//    }
//    
//    //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    //
//    //        print ("mexicanapp selected")
//    //        print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
//    //
//    //        UIView.animate(withDuration: 1, delay: 9.9, usingSpringWithDamping: 10, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
//    //            //            UIView.animate(withDuration: 1.9, delay: 8.9, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
//    //
//    //            //this code allows mphoto protocols to be passed through viewController
//    //            if let tphoto = self.theader?.tphotos?[indexPath.item] {
//    //                self.demoViewController?.showMenuDetailFortPhoto(tphoto: tphoto)
//    //
//    //            }
//    //
//    //        }, completion: nil)
//    //        //    })
//    //
//    //    }
//    
//  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->  CGFloat {
//
//        return 250
//            }
//    
//}
//    
//    //code for SearchButton
//extension SearchController: UISearchBarDelegate, UISearchResultsUpdating {
//        
//        //func searchBarTextDidBeginEditing( _SearchBar: UISearchBar) {
//        //        print("SearchBar did Begin Editing")
//        //    }
//        //
//        //func searchBarTextDidEndEditing( _SearchBar: UISearchBar) {
//        //        print("SearchBar did End Editing")
//        //    }
//        
//func updateSearchResults(for searchController: UISearchController) {
//            
//            let searchBar = searchController.searchBar
//            let scopeButton = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
//            let searchText = searchBar.text!
//            
//            filterForSearchTextAndScopeButton(searchText: searchText, scopeButton: scopeButton)
//        }
//        
//        func filterForSearchTextAndScopeButton(searchText: String, scopeButton: String = "All")
//            
//        {
//            filteredtheaders = theaders?.filter
//                
//                {
//                    search in
//                    let scopeMatch = (scopeButton == "All" || search.theaderText!.lowercased().contains(scopeButton.lowercased()))
//                    if(searchController.searchBar.text != "")
//                    {
//                        let searchTextMatch = search.theaderText!.lowercased().contains(searchText.lowercased())
//                        
//                        return scopeMatch && searchTextMatch
//                    } else {
//                        return scopeMatch
//                    }
//                    
//            }
//            
//            tableView.reloadData()
//        }
//        
//        //func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        //
//        //    print("Search text is \(searchText)")
//        //
//        //    }
//        
//        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//            print("SearchBar Cancel Clicked")
//            
//            searchBar.text = ""
//            tableView.reloadData()
//            
//            //        self.filteredcCategories = self.cCategories
//        }
//        
//    }
//
