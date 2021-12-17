//
//  MexicanViewController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit
import StoreKit

class MexicanViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
//    let breakfastImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let lunchImagesArray = ["Pozole1","Pozole3","Pozole2"]
//    let dinnerImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let demoImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let demo2ImagesArray = ["Tacos1","Tacos3","Tacos2"]
    
//    // i added this
//    var appCategories2: [AppCategory2]?

    var mphoto: mPhoto? {
    didSet {

        navigationItem.title = mphoto?.mLabel

    }

}
    
    private let headerId = "headerId"
    private let imageId = "imageId"
    private let descriptionId = "descriptionId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //code that allows rating
        if #available(iOS 10.3, *) {
            let deadline = DispatchTime.now() + .seconds(2)
            DispatchQueue.main.asyncAfter(deadline: deadline) { [weak self] in
                SKStoreReviewController.requestReview()
            } } else {
                 // Request review from a manual method here
             }
        
        // i added this
//        appCategories2 = AppCategory2.sampleAppCategories2()
        
        collectionView.backgroundColor = .white
//        collectionView.backgroundColor = .purple
//        collectionView.backgroundColor = .soothingPink

        collectionView.alwaysBounceVertical = true
        
        collectionView.register(MexicanHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView.register(MexicanImageCell.self, forCellWithReuseIdentifier: imageId)
        collectionView.register(MexicanDescriptionCell.self, forCellWithReuseIdentifier: descriptionId)


    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        if indexPath.item == 1 {
            
            print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "descriptionId", for: indexPath) as! MexicanDescriptionCell
            
            // code for description to be all different
//            cell.textView.attributedText = descriptionAttributedText()

            return cell
            
        }
            
             print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")

                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageId", for: indexPath) as! MexicanImageCell
             
                return cell
                
            }
    
////     code for descrition to be all different
//    private func descriptionAttributedText() -> NSAttributedString {
//
//        let attributedText = NSAttributedString(string: "Description", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
//
////    if let desc = {
////        attributedText.append(NSAttributedString(string: desc, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.black]))
////
////    }
////
//
//    return attributedText
//
//}
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

                    return 2
            }
        
    // i added this
//        if let count = appCategories2?.count {
//            return count
//        }
//        return 0
//    }
    
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 1 {
            
            // neeed to add code to fix attributed text
            
            return CGSize(width: view.frame.width, height: 150)
        }
    
        return CGSize(width: view.frame.width, height: 200)
    
        }
      
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! MexicanHeader
        
        header.mphoto = mphoto
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 170)
    }
    
}

class MexicanHeader: BaseCell {
    
    var mphoto: mPhoto? {
        didSet {
            
            if let mImageName = mphoto?.mImageName {
                mImageView.image = UIImage(named: mImageName)
                
            }
            
            mNameLabel.text = mphoto?.mLabel
            
            if let mPrice = mphoto?.mPrice {
                mPriceLabel.text = "Price: $\(mPrice)"
            } else {
                mPriceLabel.text = ""
            }
            
        }
        
    }
    
    let mImageView: UIImageView = {
        let mIv = UIImageView()
        //                      mIv.backgroundColor = UIColor.red
        //              mIv.image = UIImage(named: "Tacos1" )
        mIv.layer.cornerRadius = 22
        mIv.layer.masksToBounds = true
        //        mIv.contentMode = .scaleAspectFit
        mIv.translatesAutoresizingMaskIntoConstraints = false
        return mIv
    }()
    
    let mNameLabel: UILabel = {
          let mnLabel = UILabel()
//                   mnLabel.backgroundColor = UIColor.blue
          mnLabel.text = "TACOS"
          mnLabel.font = UIFont.boldSystemFont(ofSize: 16)
          mnLabel.textColor = .black
          mnLabel.translatesAutoresizingMaskIntoConstraints = false
          //          mnLabel.textAlignment = .left
          return mnLabel
      }()
    
    let mPriceLabel: UILabel = {
        let mplabel = UILabel()
//        mplabel.backgroundColor = .red
        mplabel.text = "$4.99"
        mplabel.font = UIFont.boldSystemFont(ofSize: 20)
        mplabel.textColor = .black
        return mplabel
    }()
    
    let mLikeButton: UIButton = {
             let mLButton = UIButton(type: .system)
             //                    mLButton.backgroundColor = UIColor.yellow
             mLButton.setImage( UIImage(named: "star-icons-png-6-2"), for: .normal)
             mLButton.tintColor = .yellow
             mLButton.translatesAutoresizingMaskIntoConstraints = false
             //                    mLButton.addTarget(self, action: #selector(self.fLButtonAction1), for: .touchUpInside)
             return mLButton
         }()
        
        // used to be let
    lazy var mSegmentedControl: UISegmentedControl = {
        let msc = UISegmentedControl(items: ["Info", "Customize", "Purchase"])
        msc.tintColor = .darkGray
        msc.selectedSegmentIndex = 0
        msc.layer.borderWidth = 1
        msc.layer.borderColor = UIColor.black.cgColor
        msc.addTarget(self, action: #selector(handleSegmentedValueChanged), for: .valueChanged)
        return msc
    }()
    
    let mDividerLineView: UIView = {
           let view = UIView()
        view.backgroundColor = .lightGray
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
    
    @objc fileprivate func handleSegmentedValueChanged() {
        switch mSegmentedControl.selectedSegmentIndex {
        case 0:
            backgroundColor = .white
        case 1:
            backgroundColor = .red
        case 2:
            backgroundColor = .purple
        default:
            backgroundColor = .white
            
        }
    }
    
    override func setupViews() {
        super.setupViews()
        
//        backgroundColor = .yellow

        addSubview(mImageView)
        addSubview(mNameLabel)
        addSubview(mPriceLabel)
        addSubview(mLikeButton)
        addSubview(mSegmentedControl)
        addSubview(mDividerLineView)
        
        addConstraintsWithFormat(format: "H:|-14-[v0(100)]-8-[v1(80)]", view: mImageView, mNameLabel)
        addConstraintsWithFormat(format: "V:|-14-[v0(100)]|", view: mImageView)
    
        addConstraintsWithFormat(format: "V:|-24-[v0(20)]|", view: mNameLabel)
    
        addConstraintsWithFormat(format: "H:|-124-[v0(120)]|", view: mPriceLabel)
        addConstraintsWithFormat(format: "V:|-44-[v0(20)]|", view: mPriceLabel)
        
        addConstraintsWithFormat(format: "H:[v0(50)]-48-|", view: mLikeButton)
        addConstraintsWithFormat(format: "V:[v0(32)]-64-|", view: mLikeButton)
        
        addConstraintsWithFormat(format: "H:|-40-[v0]-40-|", view: mSegmentedControl)
        addConstraintsWithFormat(format: "V:[v0(34)]-8-|", view: mSegmentedControl)
        
        addConstraintsWithFormat(format: "H:|[v0]|", view: mDividerLineView)
        addConstraintsWithFormat(format: "V:[v0(0.5)]|", view: mDividerLineView)
        

    }
    
}

class MexicanDescriptionCell: BaseCell {
    
    let textView: UITextView = {
        let tV = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "DESCRIPTION:", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\nCome try our famous Juice Joint Tacos with delicious mexican rice & beans on the side. We have a variety of meat choices.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.lightGray]))
        
        tV.attributedText = attributedText
        
        //        textView.text = "DESCRIPTION!"
        tV.font = UIFont.boldSystemFont(ofSize: 18)
        tV.translatesAutoresizingMaskIntoConstraints = false
//        tV.textAlignment = .center
        tV.isEditable = false
        tV.isScrollEnabled = false
        return tV
    }()
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(textView)
        addSubview(dividerLineView)

        addConstraintsWithFormat(format: "H:|-8-[v0]-8-|", view: textView)
        
        addConstraintsWithFormat(format: "H:|-14-[v0]-14-|", view: dividerLineView)
        
        addConstraintsWithFormat(format: "V:|-4-[v0]-4-[v1(1)]|", view: textView, dividerLineView )
        
    }
    
}

