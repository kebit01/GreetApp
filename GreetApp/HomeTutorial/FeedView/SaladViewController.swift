//
//  SaladViewController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class SaladViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
//    let breakfastImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let lunchImagesArray = ["Pozole1","Pozole3","Pozole2"]
//    let dinnerImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let demoImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let demo2ImagesArray = ["Tacos1","Tacos3","Tacos2"]
    
//    // i added this
//    var appCategories2: [AppCategory2]?

    var sphoto: sPhoto? {
    didSet {

        navigationItem.title = sphoto?.sLabel

    }

}
    
    private let headerId = "headerId"
    private let imageId = "imageId"
    private let descriptionId = "descriptionId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // i added this
//        appCategories2 = AppCategory2.sampleAppCategories2()
        
        collectionView.backgroundColor = .white
//        collectionView.backgroundColor = .purple
//        collectionView.backgroundColor = .soothingPink

        collectionView.alwaysBounceVertical = true
        
        collectionView.register(SaladHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView.register(SaladImageCell.self, forCellWithReuseIdentifier: imageId)
        collectionView.register(SaladDescriptionCell.self, forCellWithReuseIdentifier: descriptionId)


    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        if indexPath.item == 1 {
            
            print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "descriptionId", for: indexPath) as! SaladDescriptionCell
            
            // code for description to be all different
//            cell.textView.attributedText = descriptionAttributedText()

            return cell
            
        }
            
             print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")

                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageId", for: indexPath) as! SaladImageCell
             
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
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! SaladHeader
        
        header.sphoto = sphoto
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 170)
    }
    
}

class SaladHeader: BaseCell {
    
    var sphoto: sPhoto? {
        didSet {
            
            if let sImageName = sphoto?.sImageName {
                sImageView.image = UIImage(named: sImageName)
                
            }
            
            sNameLabel.text = sphoto?.sLabel
            
            if let sPrice = sphoto?.sPrice {
                sPriceLabel.text = "Price: $\(sPrice)"
            } else {
                sPriceLabel.text = ""
            }
            
        }
        
    }
    
    let sImageView: UIImageView = {
        let sIv = UIImageView()
        //                      sIv.backgroundColor = UIColor.red
        //              sIv.image = UIImage(named: "Tacos1" )
        sIv.layer.cornerRadius = 22
        sIv.layer.masksToBounds = true
        //        sIv.contentMode = .scaleAspectFit
        sIv.translatesAutoresizingMaskIntoConstraints = false
        return sIv
    }()
    
    let sNameLabel: UILabel = {
          let snLabel = UILabel()
//                   snLabel.backgroundColor = UIColor.blue
          snLabel.text = "TACOS"
          snLabel.font = UIFont.boldSystemFont(ofSize: 16)
          snLabel.textColor = .black
          snLabel.translatesAutoresizingMaskIntoConstraints = false
          //          snLabel.textAlignment = .left
          return snLabel
      }()
    
    let sPriceLabel: UILabel = {
        let splabel = UILabel()
//        splabel.backgroundColor = .red
        splabel.text = "$4.99"
        splabel.font = UIFont.boldSystemFont(ofSize: 20)
        splabel.textColor = .black
        return splabel
    }()
    
    let sLikeButton: UIButton = {
             let sLButton = UIButton(type: .system)
             //                    sLButton.backgroundColor = UIColor.yellow
             sLButton.setImage( UIImage(named: "star-icons-png-6-2"), for: .normal)
             sLButton.tintColor = .yellow
             sLButton.translatesAutoresizingMaskIntoConstraints = false
             //                    sLButton.addTarget(self, action: #selector(self.fLButtonAction1), for: .touchUpInside)
             return sLButton
         }()
    
        // used to be let
   lazy var sSegmentedControl: UISegmentedControl = {
       let ssc = UISegmentedControl(items: ["Info", "Customize", "Purchase"])
       ssc.tintColor = .darkGray
       ssc.selectedSegmentIndex = 0
       ssc.layer.borderWidth = 1
       ssc.layer.borderColor = UIColor.black.cgColor
       ssc.addTarget(self, action: #selector(handleSegmentedValueChanged), for: .valueChanged)
       return ssc
   }()
   
   @objc fileprivate func handleSegmentedValueChanged() {
         switch sSegmentedControl.selectedSegmentIndex {
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
    
    let sdividerLineView: UIView = {
           let view = UIView()
        view.backgroundColor = .lightGray
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
    
    override func setupViews() {
        super.setupViews()
        
//        backgroundColor = .yellow

        addSubview(sImageView)
        addSubview(sNameLabel)
        addSubview(sPriceLabel)
        addSubview(sLikeButton)
        addSubview(sSegmentedControl)
        addSubview(sdividerLineView)
        
        addConstraintsWithFormat(format: "H:|-14-[v0(100)]-8-[v1(80)]", view: sImageView, sNameLabel)
        addConstraintsWithFormat(format: "V:|-14-[v0(100)]|", view: sImageView)
    
        addConstraintsWithFormat(format: "V:|-24-[v0(20)]|", view: sNameLabel)
        
        addConstraintsWithFormat(format: "H:|-124-[v0(120)]|", view: sPriceLabel)
        addConstraintsWithFormat(format: "V:|-44-[v0(20)]|", view: sPriceLabel)
        
        addConstraintsWithFormat(format: "H:[v0(50)]-48-|", view: sLikeButton)
        addConstraintsWithFormat(format: "V:[v0(32)]-64-|", view: sLikeButton)
        
        addConstraintsWithFormat(format: "H:|-40-[v0]-40-|", view: sSegmentedControl)
        addConstraintsWithFormat(format: "V:[v0(34)]-8-|", view: sSegmentedControl)
        
        addConstraintsWithFormat(format: "H:|[v0]|", view: sdividerLineView)
        addConstraintsWithFormat(format: "V:[v0(0.5)]|", view: sdividerLineView)
        

    }
}

class SaladDescriptionCell: BaseCell {
    
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

