//
//  HomeFeedVC.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

//import UIKit
////import Cosmos
//
//// this protocol allows didTapPurchaseButton to be pressed connected from mLauncher to mBidCell
//protocol MBidLauncherDelegate {
//    
//    func bidPurchaseView()
//
//}
//
//class HomeFeedVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
//    
//    //allows pop-up view of BidLauncher to show
//    let mbiddingLauncher = mBidLauncher()
//    
//    //allows pop-up view of filteringLauncher(purchaseView) to show
//    let filteringLauncher = cPurchaseLauncher()
//    
//    //    let breakfastImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    //    let lunchImagesArray = ["Pozole1","Pozole3","Pozole2"]
//    //    let dinnerImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    //    let demoImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    //    let demo2ImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    
//    //    // i added this
//    //    var appCategories2: [AppCategory2]?
//    
//    var tphoto: tPhoto? {
//        didSet {
//            
//            navigationItem.title = tphoto?.tLabel
//            
//        }
//        
//    }
//    
//    private let headerId = "headerId"
//    private let imageId = "imageId"
//    private let descriptionId = "descriptionId"
//    private let infoId = "infoId"
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // i added this
//        //        appCategories2 = AppCategory2.sampleAppCategories2()
//        
//        collectionView.backgroundColor = .white
//        //                collectionView.backgroundColor = .purple
//        //        collectionView.backgroundColor = .soothingPink
//        
//        collectionView.alwaysBounceVertical = true
//        
//        collectionView.register(MexicanHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
//        collectionView.register(FeedImageCell.self, forCellWithReuseIdentifier: imageId)
//        collectionView.register(MexicanDescriptionCell.self, forCellWithReuseIdentifier: descriptionId)
//        collectionView.register(MexicanInfoCell.self, forCellWithReuseIdentifier: infoId)
//        
//        setupNavControls()
//        
//    }
//    
//    fileprivate func setupNavControls() {
//        
//        //        "in-progress"
//        let uploadButton = UIImage(named: "more")?.withRenderingMode(.alwaysOriginal)
//        let uploadBarButtonItem = UIBarButtonItem(image: uploadButton, style: .plain, target: self, action: #selector(moreHandle))
//        //        use if its only one bar button
//        navigationItem.rightBarButtonItem = uploadBarButtonItem
//        //
//        //                //code if you want two navButtons on navBar
//        //                self.navigationItem.rightBarButtonItems = [orderBarButtonItem, testBarButtonItem]
//        
//    }
//    
//    @objc func moreHandle() {
//        
//        print("moreHandle")
//        
//        //                tabBarController?.tabBar.isHidden = false
//        
//        //        //hides backBarButton
//        //              navigationItem.hidesBackButton = true
//        
//        //        //                if you are presenting a regularUIView
//        //            let viewController = ProfileController1()
//        //        navigationController?.pushViewControllerFromRight(controller: viewController)
//        
//        //if you are presenting a collectionView
//        let layout = UICollectionViewFlowLayout()
//        let viewController = ProfileController2(collectionViewLayout: layout)
//        navigationController?.pushViewControllerFromRight(controller: viewController)
//        //                self.navigationController?.present(viewController, animated: true)
//        
//        //        viewController.modalPresentationStyle = .fullScreen
//        //        viewController.modalTransitionStyle = .partialCurl
//        //        present(viewController, animated: true)
//        
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        if indexPath.item == 2 {
//            
//            print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
//            
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "infoId", for: indexPath) as! MexicanInfoCell
//            
//            // code for description to be all different
//            //            cell.textView.attributedText = descriptionAttributedText()
//            
//            return cell
//        
//        }
//        
//        if indexPath.item == 1 {
//            
//            print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
//            
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "descriptionId", for: indexPath) as! MexicanDescriptionCell
//            
//            // code for description to be all different
//            //            cell.textView.attributedText = descriptionAttributedText()
//            
//            return cell
//            
//        }
//        
//        print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageId", for: indexPath) as! FeedImageCell
//        
//        return cell
//        
//    }
//    
//    ////     code for descrition to be all different
//    //    private func descriptionAttributedText() -> NSAttributedString {
//    //
//    //        let attributedText = NSAttributedString(string: "Description", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
//    //
//    ////    if let desc = {
//    ////        attributedText.append(NSAttributedString(string: desc, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.black]))
//    ////
//    ////    }
//    ////
//    //
//    //    return attributedText
//    //
//    //}
//    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        
//        return 3
//    }
//    
//    // i added this
//    //        if let count = appCategories2?.count {
//    //            return count
//    //        }
//    //        return 0
//    //    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        if indexPath.item == 2 {
//                        
//            return CGSize(width: view.frame.width, height: 300)
//        }
//        
//        if indexPath.item == 1 {
//                        
//            return CGSize(width: view.frame.width, height: 250)
//        }
//        
//        return CGSize(width: view.frame.width, height: 300)
//        
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! MexicanHeader
//        
//        header.mRafPushDelegate = self
//        
//        //testing testing
//        header.mPushBidDelegate = self
//        
//        header.tphoto = tphoto
//        
//        return header
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: view.frame.width, height: 150)
//    }
//    
//}
//
//class MexicanHeader: BaseCell {
//    
//    //allows CheeseSteakVC connect or pass data between HomeVC to pass into CheeseSteakerHeader to be non-nil
//    var mRafPushDelegate: MRafPushDelegate?
//    
//    // testing testing
//    var mPushBidDelegate: MPushBidDelegate?
//    
//    //this is the Rating for the User
//    lazy var mProductCosmosView: CosmosView = {
//        var view = CosmosView()
//        //        view.settings.updateOnTouch = false
//        view.settings.filledImage = UIImage(named: "fire-heart-2")?.withRenderingMode(.alwaysOriginal)
//        view.settings.emptyImage = UIImage(named: "fire-heart")?.withRenderingMode(.alwaysOriginal)
//        
//        view.settings.totalStars = 5
//        view.settings.starSize = 17
//        view.settings.starMargin = 3.3
//        view.settings.fillMode = .precise
//        
//        view.text = "Rate me"
//        view.settings.textColor = .red
//        view.settings.textMargin = 10
//        
//        return view
//    }()
//    
//    var tphoto: tPhoto? {
//        didSet {
//            
//            if let mImageName = tphoto?.tImageName {
//                mImageView.image = UIImage(named: mImageName)
//                
//            }
//            
//            mProductLabel.text = tphoto?.tLabel
//            
//            if let mPrice = tphoto?.tPrice {
//                mPriceLabel.text = "Price: $\(mPrice)"
//            } else {
//                mPriceLabel.text = ""
//            }
//            
//        }
//        
//    }
//    
//    let mImageView: UIImageView = {
//        let mIv = UIImageView()
//        //                      mIv.backgroundColor = UIColor.red
//        //              mIv.image = UIImage(named: "Tacos1" )
//        mIv.layer.cornerRadius = 22
//        mIv.layer.masksToBounds = true
//        //        mIv.contentMode = .scaleAspectFit
//        mIv.translatesAutoresizingMaskIntoConstraints = false
//        return mIv
//    }()
//    
//    let mProductLabel: UILabel = {
//        let mpLabel = UILabel()
//        mpLabel.backgroundColor = UIColor.orange
//        mpLabel.text = "TACOS"
//        mpLabel.font = UIFont.boldSystemFont(ofSize: 25)
//        mpLabel.textColor = .black
//        mpLabel.translatesAutoresizingMaskIntoConstraints = false
//        //          mnLabel.textAlignment = .left
//        return mpLabel
//    }()
//    
//    let mPriceLabel: UILabel = {
//        let mprlabel = UILabel()
//        mprlabel.backgroundColor = .red
//        mprlabel.text = "$4.99"
//        mprlabel.font = UIFont.boldSystemFont(ofSize: 20)
//        mprlabel.textColor = .black
//        return mprlabel
//    }()
//    
//    let mUserLabel: UILabel = {
//        let muLabel = UILabel()
//        muLabel.backgroundColor = UIColor.blue
//        muLabel.text = "Username:"
//        muLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        muLabel.textColor = .black
//        muLabel.translatesAutoresizingMaskIntoConstraints = false
//        //         muLabel.textAlignment = .left
//        return muLabel
//    }()
//    
//    let mLikeButton: UIButton = {
//        let mLButton = UIButton(type: .system)
//        mLButton.backgroundColor = UIColor.orange
//        mLButton.setImage( UIImage(named: "star-icons-png-6-2"), for: .normal)
//        mLButton.tintColor = .yellow
//        mLButton.translatesAutoresizingMaskIntoConstraints = false
//        //                    mLButton.addTarget(self, action: #selector(self.fLButtonAction1), for: .touchUpInside)
//        return mLButton
//    }()
//    
//    lazy var mPurchaseButton: UIButton = {
//        let mPbutton = UIButton(type: .system)
//        mPbutton.setTitle("Purchase", for: .normal)
//        mPbutton.translatesAutoresizingMaskIntoConstraints = false
//        mPbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
//        //        mPbutton.backgroundColor = .blue
//        mPbutton.setTitleColor(.black, for: .normal)
//        mPbutton.addTarget(self, action: #selector(handlePurch), for: .touchUpInside)
//        return mPbutton
//    }()
//    
//    @objc private func handlePurch() {
//        print("Trying to advance to handlePurch")
//        
//        mPurchaseButton.pulse()
//        
//        mRafPushDelegate?.handlemrButtonpressed()
//        
//    }
//    
//    lazy var mBidButton: UIButton = {
//        let mBbutton = UIButton(type: .system)
//        mBbutton.setTitle("Bid", for: .normal)
//        mBbutton.translatesAutoresizingMaskIntoConstraints = false
//        mBbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        //        mBbutton.backgroundColor = .red
//        mBbutton.setTitleColor(.black, for: .normal)
//        mBbutton.addTarget(self, action: #selector(handleBid), for: .touchUpInside)
//        return mBbutton
//    }()
//    
//    @objc private func handleBid() {
//        print("Trying to advance to handleBid")
//        
//        mBidButton.pulse()
//        
//        mPushBidDelegate?.handlemBid()
//        
//    }
//    
//    lazy var mRaffleButton: UIButton = {
//        let mRbutton = UIButton(type: .system)
//        mRbutton.setTitle("Raffle", for: .normal)
//        mRbutton.translatesAutoresizingMaskIntoConstraints = false
//        mRbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        //        mRbutton.backgroundColor = .green
//        mRbutton.setTitleColor(.black, for: .normal)
//        mRbutton.addTarget(self, action: #selector(handleRaff), for: .touchUpInside)
//        return mRbutton
//    }()
//    
//    @objc private func handleRaff() {
//        
//        print("Trying to advance to handleRaff")
//        
//        mRaffleButton.pulse()
//        
//        mRafPushDelegate?.handlemrButtonpressed()
//        
//    }
//    
//    let mDividerLineView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .lightGray
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    override func setupViews() {
//        super.setupViews()
//        
//        //        backgroundColor = .purple
//        
//        addSubview(mImageView)
//        addSubview(mProductLabel)
//        addSubview(mPriceLabel)
//        addSubview(mUserLabel)
//        addSubview(mProductCosmosView)
//        addSubview(mLikeButton)
//        addSubview(mDividerLineView)
//        
//        addConstraintsWithFormat(format: "H:|-14-[v0(100)]-8-[v1(120)]", view: mImageView, mProductLabel)
//        addConstraintsWithFormat(format: "V:|-14-[v0(100)]|", view: mImageView)
//        
//        addConstraintsWithFormat(format: "V:|-24-[v0(25)]|", view: mProductLabel)
//        
//        addConstraintsWithFormat(format: "H:|-123-[v0(120)]|", view: mPriceLabel)
//        addConstraintsWithFormat(format: "V:|-50-[v0(20)]|", view: mPriceLabel)
//        
//        addConstraintsWithFormat(format: "H:|-123-[v0(120)]|", view: mUserLabel)
//        addConstraintsWithFormat(format: "V:|-72-[v0(20)]|", view: mUserLabel)
//        
//        addConstraintsWithFormat(format: "H:|-124-[v0(120)]|", view: mProductCosmosView)
//        addConstraintsWithFormat(format: "V:|-92-[v0(20)]|", view: mProductCosmosView)
//        
//        addConstraintsWithFormat(format: "H:[v0(50)]-48-|", view: mLikeButton)
//        addConstraintsWithFormat(format: "V:[v0(32)]-64-|", view: mLikeButton)
//    
//        addConstraintsWithFormat(format: "H:|[v0]|", view: mDividerLineView)
//        addConstraintsWithFormat(format: "V:[v0(0.5)]|", view: mDividerLineView)
//        
//        setupBottomControls()
//        mPurchaseButton.customButton()
//        mBidButton.customButton()
//        mRaffleButton.customButton()
//        
//        //keeps track of Cosmos Rating
//        mProductCosmosView.didTouchCosmos = { rating in
//            print("Rated \(rating)")
//            
//        }
//        
//    }
//    
//    fileprivate func setupBottomControls() {
//        
//        let bottomControlsStackView = UIStackView(arrangedSubviews: [mPurchaseButton, mBidButton, mRaffleButton])
//        
//        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
//        bottomControlsStackView.distribution = .fillEqually
//        
//        addSubview(bottomControlsStackView)
//        
//        bottomControlsStackView.heightAnchor.constraint(equalToConstant: 30).isActive =  true
//        bottomControlsStackView.widthAnchor.constraint(equalToConstant: 260).isActive =  true
//        bottomControlsStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        bottomControlsStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
//        
//    }
//    
//}
//
//class MexicanDescriptionCell: BaseCell {
//    
//    let textView: UITextView = {
//        let tV = UITextView()
//        
//        let attributedText = NSMutableAttributedString(string: "DESCRIPTION:", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
//        
//        attributedText.append(NSAttributedString(string: "\n\nCome try our famous Juice Joint Tacos with delicious mexican rice & beans on the side. We have a variety of meat choices.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.lightGray]))
//        
//        tV.attributedText = attributedText
//        
//        //        textView.text = "DESCRIPTION!"
//        tV.font = UIFont.boldSystemFont(ofSize: 18)
//        tV.translatesAutoresizingMaskIntoConstraints = false
//        //        tV.textAlignment = .center
//        tV.isEditable = false
//        tV.isScrollEnabled = false
//        return tV
//    }()
//    
//    let dividerLineView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .lightGray
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    override func setupViews() {
//        super.setupViews()
//        
//        backgroundColor = .yellow
//        
//        addSubview(textView)
//        addSubview(dividerLineView)
//        
//        addConstraintsWithFormat(format: "H:|-8-[v0]-8-|", view: textView)
//        
//        addConstraintsWithFormat(format: "H:|-14-[v0]-14-|", view: dividerLineView)
//        
//        addConstraintsWithFormat(format: "V:|-4-[v0]-4-[v1(1)]|", view: textView, dividerLineView )
//        
//    }
//    
//}
//
//class MexicanInfoCell: BaseCell {
//    
////    // this is label Array for Textfield
////    let UploadTfLabels = ["Product Name:", "Price:", "Description:", "Category:", "Length: (CM)", "Width: (CM)", "Hieght: (CM)"]
//    
//    private let iProductLabel: UILabel = {
//        let blabel = UILabel()
//        blabel.textAlignment = .left
//        blabel.text = "Product:"
//        blabel.backgroundColor = .red
//        blabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return blabel
//    }()
//
//    private let iProduct: UILabel = {
//        let blabel = UILabel()
//        blabel.textAlignment = .center
//        blabel.text = "Toke"
//        blabel.backgroundColor = .red
//        blabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return blabel
//    }()
//
//    private let iPriceLabel: UILabel = {
//        let clabel = UILabel()
//        clabel.textAlignment = .left
//        clabel.text = "Current Price (U$D):"
//        clabel.backgroundColor = .yellow
//        clabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return clabel
//    }()
//    
//    private let iPrice: UILabel = {
//        let cPlabel = UILabel()
//        cPlabel.text = "$1.87"
//        cPlabel.textAlignment = .center
//        cPlabel.font = UIFont.boldSystemFont(ofSize: 20)
//        cPlabel.textColor = .black
//        return cPlabel
//    }()
//
//    private let iCategoryLabel: UILabel = {
//        let clabel = UILabel()
//        clabel.textAlignment = .left
//        clabel.text = "Category:"
//        clabel.backgroundColor = .brown
//        clabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return clabel
//    }()
//    
//    private let iCategory: UILabel = {
//        let clabel = UILabel()
//        clabel.textAlignment = .center
//        clabel.text = "Business"
//        clabel.backgroundColor = .brown
//        clabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return clabel
//    }()
//    
//    private let iLengthLabel: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "Length (CM):"
//        tClabel.backgroundColor = .magenta
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    private let iLength: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "10"
//        tClabel.backgroundColor = .magenta
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    private let iWidthLabel: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "Width (CM):"
//        tClabel.backgroundColor = .magenta
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    private let iWidth: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "15"
//        tClabel.backgroundColor = .magenta
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    private let iHeightLabel: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "Height (CM):"
//        tClabel.backgroundColor = .magenta
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    private let iHeight: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "08"
//        tClabel.backgroundColor = .magenta
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    private let iQuantityLabel: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "Quantity:"
//        tClabel.backgroundColor = .yellow
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    private let iQuantity: UILabel = {
//        let tClabel = UILabel()
//        tClabel.textAlignment = .left
//        tClabel.text = "1"
//        tClabel.backgroundColor = .yellow
//        tClabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        return tClabel
//    }()
//    
//    override func setupViews() {
//        super.setupViews()
//        
//       addSubview(iProductLabel)
//       addSubview(iProduct)
//       addSubview(iPriceLabel)
//       addSubview(iPrice)
//       addSubview(iCategoryLabel)
//       addSubview(iCategory)
//       addSubview(iLengthLabel)
//       addSubview(iLength)
//       addSubview(iWidthLabel)
//       addSubview(iWidth)
//       addSubview(iHeightLabel)
//       addSubview(iHeight)
//       addSubview(iQuantityLabel)
//       addSubview(iQuantity)
//        
//        backgroundColor = .cyan
//        
//        infoViews()
//        
//    }
//        
//        func infoViews() {
//            
////            for uploadTfLabels in UploadTfLabels {
////
////                let tfLabel = UILabel(backgroundColor: .orange)
////                tfLabel.text = "\(uploadTfLabels)"
////                tfLabel.constrainHeight(50)
////                tfLabel.translatesAutoresizingMaskIntoConstraints = false
//////                addSubview(tfLabel)
//////                tfLabel.stack(self, spacing: 5, alignment: .center, distribution: .fillEqually)
//////                print(uploadTfLabels)
////
////                let mainStack = UIStackView(arrangedSubviews: [tfLabel])
////
////        mainStack.backgroundColor = .red
////
////        mainStack.translatesAutoresizingMaskIntoConstraints = false
////        mainStack.spacing = 5
////        mainStack.distribution = .equalSpacing
////
////        addSubview(mainStack)
////
//////        mainStack.addSubview(tfLabel)
////
////        mainStack.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
////        mainStack.heightAnchor.constraint(equalToConstant: 30).isActive =  true
////        mainStack.widthAnchor.constraint(equalToConstant: 260).isActive =  true
////        mainStack.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//            
//    addConstraintsWithFormat(format: "H:|-28-[v0(120)]-5-[v1(180)]", view: iProductLabel , iProduct)
//    addConstraintsWithFormat(format: "V:|-10-[v0(32)]|", view: iProductLabel)
//    
//    addConstraintsWithFormat(format: "V:|-10-[v0(32)]|", view: iProduct)
//    
//    addConstraintsWithFormat(format: "H:|-28-[v0(180)]-5-[v1(120)]", view: iPriceLabel , iPrice)
//    addConstraintsWithFormat(format: "V:|-50-[v0(32)]|", view: iPriceLabel)
//    
//    addConstraintsWithFormat(format: "V:|-50-[v0(32)]|", view: iPrice)
//    
//    addConstraintsWithFormat(format: "H:|-28-[v0(120)]-5-[v1(180)]", view: iCategoryLabel , iCategory)
//    addConstraintsWithFormat(format: "V:|-90-[v0(32)]|", view: iCategoryLabel)
//    
//    addConstraintsWithFormat(format: "V:|-90-[v0(32)]|", view: iCategory)
//
//    addConstraintsWithFormat(format: "H:|-28-[v0(120)]-5-[v1(120)]", view: iLengthLabel , iLength)
//    addConstraintsWithFormat(format: "V:|-130-[v0(32)]|", view: iLengthLabel)
//
//    addConstraintsWithFormat(format: "V:|-130-[v0(32)]|", view: iLength)
//    
//    addConstraintsWithFormat(format: "H:|-28-[v0(120)]-5-[v1(120)]", view: iWidthLabel , iWidth)
//    addConstraintsWithFormat(format: "V:|-170-[v0(32)]|", view: iWidthLabel)
//    
//    addConstraintsWithFormat(format: "V:|-170-[v0(32)]|", view: iWidth)
//    
//    addConstraintsWithFormat(format: "H:|-28-[v0(120)]-5-[v1(120)]", view: iHeightLabel , iHeight)
//    addConstraintsWithFormat(format: "V:|-210-[v0(32)]|", view: iHeightLabel)
//    
//    addConstraintsWithFormat(format: "V:|-210-[v0(32)]|", view: iHeight)
//            
//    addConstraintsWithFormat(format: "H:|-28-[v0(150)]-5-[v1(150)]", view: iQuantityLabel , iQuantity)
//    addConstraintsWithFormat(format: "V:|-250-[v0(32)]|", view: iQuantityLabel)
//        
//    addConstraintsWithFormat(format: "V:|-250-[v0(32)]|", view: iQuantity)
//            
//    }
//    
//}
//
//extension HomeFeedVC: MRafPushDelegate, MPurchaseLauncherDelegate, MPushBidDelegate, MBidLauncherDelegate {
//    
//    func handlemrButtonpressed() {
//        
//        //this allows collectionView to show
//        filteringLauncher.showFilter()
//        
//        // this protocol allows didTapPurchaseButton to be pressed connected mainVC "MexicanViewController" to MexicanBidLauncher "filterDismiss" to bidCell (2Protocols)
//        filteringLauncher.mPurchaseLauncherDelegate = self
//        
//        // this allows models mphoto be passed into bidLauncher
//        filteringLauncher.tphoto = tphoto
//   
//    }
//    
//    func purchaseView1() {
//        
//        //        //        // present UICollectionViewController
//        //        //        let layout = UICollectionViewFlowLayout()
//        //        //               let mexicanViewController = MexicanViewController(collectionViewLayout: layout)
//        //        //                   self.navigationController?.pushViewController(mexicanViewController, animated: true)
//        
//        //present UIViewController
//        let purchaseViewController = PurchaseReview()
//        self.navigationController?.pushViewController(purchaseViewController, animated: true)
//        
//        // this allows models mphoto be passed into ViewController
//        purchaseViewController.tphoto = tphoto
//        
//    }
//    
//    func handlemBid() {
//        
//        //this allows collectionView to show
//        mbiddingLauncher.showmBid()
//        
//        // this protocol allows didTapPurchaseButton to be pressed connected mainVC "MexicanViewController" to MexicanBidLauncher "filterDismiss" to bidCell (2Protocols)
//        mbiddingLauncher.mBidLauncherDelegate = self
//        
//        // this allows models mphoto be passed into bidLauncher
//        mbiddingLauncher.tphoto = tphoto
//        
//    }
//    
//    func bidPurchaseView() {
//        
//        //        //        // present UICollectionViewController
//        //        //        let layout = UICollectionViewFlowLayout()
//        //        //               let mexicanViewController = MexicanViewController(collectionViewLayout: layout)
//        //        //                   self.navigationController?.pushViewController(mexicanViewController, animated: true)
//        
//        //present UIViewController
//        let bidViewController = BidReview()
//        self.navigationController?.pushViewController(bidViewController, animated: true)
//        
//        // this allows models mphoto be passed into ViewController
//        bidViewController.tphoto = tphoto
//        
//    }
//
//}
//
