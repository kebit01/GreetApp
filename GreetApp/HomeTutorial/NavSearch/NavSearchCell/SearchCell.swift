//
//  SearchCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

//import UIKit
//
//class SearchCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//    //BaseCell {
//    
//    var theader: tHeader? {
//        didSet {
//            
//            if let fheaderText = theader?.theaderText {
//                menuLabel.text = fheaderText
//            }
//            
//            //            //this code is needed to load images on FriendsListVC cellForItemAt func
//            //            fCollectionView.reloadData()
//            
//        }
//    }
//    
//    //    var demoViewController: HomeView2?
//    
//    lazy var fCollectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
//        let fcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        fcv.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
//        //        fcv.translatesAutoresizingMaskIntoConstraints = false
//        fcv.backgroundColor = UIColor.lightGray
//        fcv.register(SearchCell2.self, forCellWithReuseIdentifier: "searchId2")
//        //        fcv.backgroundColor = UIColor.soothingPink
//        fcv.dataSource = self
//        fcv.delegate = self
//        return fcv
//    }()
//    
//    let menuLabel: UILabel = {
//        let mLabel = UILabel()
//        mLabel.backgroundColor = UIColor.orange
//        mLabel.text = "FAVORITE"
//        mLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        mLabel.translatesAutoresizingMaskIntoConstraints = false
//        //          mLabel.textAlignment = .left
//        return mLabel
//    }()
//    
//    let dividerLineView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .darkGray
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    private let searchId2 = "searchId2"
//    
//    //    //THIS CODE IS USED IF ITS BASECELL/COLLECTIONVIEW
//    //    override func setupViews() {
//    //        super.setupViews()
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        configureCollection()
//        
//    }
//    
//    func configureCollection() {
//        
//        //        headers = Header.sampleTestCategories()
//        
//        //        backgroundColor = .orange
//        //        backgroundColor = UIColor.soothingPink
//        
//        addSubview(fCollectionView)
//        addSubview(menuLabel)
//        addSubview(dividerLineView)
//        
//        // add H: -15- constriants to view view
//        addConstraintsWithFormat(format: "H:|[v0]|", view: fCollectionView)
//        addConstraintsWithFormat(format: "V:|[v0]|", view: fCollectionView)
//        
//        menuLabel.topAnchor.constraint(equalTo: fCollectionView.topAnchor, constant: 5).isActive = true
//        menuLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 5).isActive = true
//        menuLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        menuLabel.widthAnchor.constraint(equalToConstant: 230).isActive = true
//        
//        dividerLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//        dividerLineView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        dividerLineView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        
//    }
//    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        
//        return 1
//        
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        
//        //         return 5
//        //    }
//        if let count =  theader?.tphotos?.count {
//            return count
//            
//        }
//        return 0
//    }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        //        if indexPath.section == 0 {
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "searchId2", for: indexPath) as! SearchCell2
//        
//        //                        as! MenuCell
//        
//        cell.tphoto = theader?.tphotos?[indexPath.item]
//        
//        //            cell.backgroundColor = .blue
//        
//        return cell
//        
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        // original before
//        //        return CGSize(width: frame.width , height: 260)
//        
//        return CGSize(width: 200, height: 200 - 30)
//        
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
//    //            if let mphoto = self.mheader?.mphotos?[indexPath.item] {
//    //                self.demoViewController?.showMenuDetailFormPhoto(mphoto: mphoto)
//    //
//    //            }
//    //
//    //        }, completion: nil)
//    //        //    })
//    //
//    //    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//        
//    }
//    //
//    //    //        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//    //    //
//    //    //            return 0
//    //    //        }
//    
//}
//
//class SearchCell2: BaseCell {
//    
//    override var isHighlighted: Bool {
//        didSet {
//            //
//            //                                 backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
//            //                                 print(isHighlighted)
//            
//            pulse()
//            
//        }
//    }
//    
//    var tphoto: tPhoto? {
//        didSet {
//            
//            if let mImageName = tphoto?.tImageName {
//                mImageView1.image = UIImage(named: mImageName)
//                
//            }
//            
//            mNameLabel.text = tphoto?.tLabel
//            
//        }
//    }
//    
//    fileprivate let mImageView1: UIImageView = {
//        let mImageView1 = UIImageView()
//        //                    ImageView1.backgroundColor = UIColor.red
//        mImageView1.image = UIImage(named: "Tacos1" )
//        mImageView1.layer.cornerRadius = 22
//        mImageView1.clipsToBounds = true
//        mImageView1.layer.masksToBounds = true
//        mImageView1.contentMode = .scaleAspectFit
//        mImageView1.translatesAutoresizingMaskIntoConstraints = false
//        return mImageView1
//    }()
//    
//    let mNameLabel: UILabel = {
//        let mnLabel = UILabel()
//        //         mnLabel.backgroundColor = UIColor.blue
//        mnLabel.text = "TACOS"
//        mnLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        mnLabel.textColor = .white
//        mnLabel.translatesAutoresizingMaskIntoConstraints = false
//        //          mnLabel.textAlignment = .left
//        return mnLabel
//    }()
//    
//    //    let mPriceLabel: UILabel = {
//    //        let mplabel = UILabel()
//    //        mplabel.text = "$4.99"
//    //        mplabel.font = UIFont.boldSystemFont(ofSize: 20)
//    //        mplabel.textColor = .darkGray
//    //        return mplabel
//    //    }()
//    
//    override func setupViews() {
//        super.setupViews()
//        
//        //        backgroundColor = .red
//        
//        addSubview(mImageView1)
//        
//        setupGradientLayer()
//        
//        addSubview(mNameLabel)
//        
//        mImageView1.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
//        mNameLabel.frame = CGRect(x: 20, y: 75, width: frame.width, height: frame.height)
//        
//        
//        layer.cornerRadius = 15
//        //        clipsToBounds = true
//        
//        layer.shadowColor = UIColor.blue.cgColor
//        layer.shadowOffset = CGSize(width: 0, height: 0)
//        layer.shadowOpacity = 0.8
//        layer.shadowRadius = 15
//        
//    }
//    
//    let gradientLayer = CAGradientLayer()
//    
//    fileprivate func setupGradientLayer() {
//        
//        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
//        gradientLayer.locations = [0.7,1.1]
//        layer.cornerRadius = 10
//        clipsToBounds = true
//        layer.addSublayer(gradientLayer)
//    }
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        
//        gradientLayer.frame = bounds
//    }
//    
//    func pulse() {
//        
//        let pulse = CASpringAnimation(keyPath: "transform.scale")
//        
//        pulse.duration = 0.4
//        pulse.fromValue = 0.95
//        pulse.toValue = 1
//        pulse.autoreverses = true
//        pulse.repeatCount = 1
//        pulse.initialVelocity = 0.1
//        pulse.damping = 1.0
//        
//        layer.add(pulse, forKey: nil)
//    }
//    
//}
//
//
