//
//  CheeseSteakViewController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class CheeseSteakViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
//    let breakfastImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let lunchImagesArray = ["Pozole1","Pozole3","Pozole2"]
//    let dinnerImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let demoImagesArray = ["Tacos1","Tacos3","Tacos2"]
//    let demo2ImagesArray = ["Tacos1","Tacos3","Tacos2"]
    
//    // i added this
//    var appCategories2: [AppCategory2]?

    var cphoto: cPhoto? {
    didSet {

        navigationItem.title = cphoto?.cLabel

    }

}
    
    private let headerId = "headerId"
    private let imageId = "imageId"
    private let descriptionId = "descriptionId"
    
    // used to be let
       lazy var cSegmentedControl: UISegmentedControl = {
           let csc = UISegmentedControl(items: ["Info", "Customize", "Purchase"])
           csc.tintColor = .darkGray
           csc.selectedSegmentIndex = 0
           csc.layer.borderWidth = 1
           csc.layer.borderColor = UIColor.black.cgColor
           csc.addTarget(self, action: #selector(handleSegmentedValueChanged), for: .valueChanged)
           return csc
       }()
       
       @objc fileprivate func handleSegmentedValueChanged() {
        
        print(cSegmentedControl.selectedSegmentIndex)
             switch cSegmentedControl.selectedSegmentIndex {
             case 0:
                collectionView.backgroundColor = .white
             case 1:
                collectionView.backgroundColor = .red
             case 2:
                collectionView.backgroundColor = .purple
             default:
                collectionView.backgroundColor = .white
                 
             }
         }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(cSegmentedControl)

        
        view.addConstraintsWithFormat(format: "H:|-40-[v0]-40-|", view: cSegmentedControl)
        view.addConstraintsWithFormat(format: "V:[v0(34)]-200-|", view: cSegmentedControl)
        
        // i added this
//        appCategories2 = AppCategory2.sampleAppCategories2()
        
        collectionView.backgroundColor = .white
//        collectionView.backgroundColor = .purple
//        collectionView.backgroundColor = .soothingPink

        collectionView.alwaysBounceVertical = true
        
        collectionView.register(CheeseSteakHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView.register(CheeseSteakImageCell.self, forCellWithReuseIdentifier: imageId)
        collectionView.register(CheeseSteakDescriptionCell.self, forCellWithReuseIdentifier: descriptionId)


    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        if indexPath.item == 1 {
            
            print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "descriptionId", for: indexPath) as! CheeseSteakDescriptionCell
            
            // code for description to be all different
//            cell.textView.attributedText = descriptionAttributedText()

            return cell
            
        }
            
             print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")

                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageId", for: indexPath) as! CheeseSteakImageCell
             
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
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! CheeseSteakHeader
        
        header.cphoto = cphoto
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 170)
    }
    
}

class CheeseSteakHeader: BaseCell {
    
    var cphoto: cPhoto? {
        didSet {
            
            if let cImageName = cphoto?.cImageName {
                cImageView.image = UIImage(named: cImageName)
                
            }
            
            cNameLabel.text = cphoto?.cLabel
            
            if let cPrice = cphoto?.cPrice {
                cPriceLabel.text = "Price: $\(cPrice)"
            } else {
                cPriceLabel.text = ""
            }
            
        }
        
    }
    
    let cImageView: UIImageView = {
        let cIv = UIImageView()
        //                      cIv.backgroundColor = UIColor.red
        //              cIv.image = UIImage(named: "Tacos1" )
        cIv.layer.cornerRadius = 22
        cIv.layer.masksToBounds = true
        //        cIv.contentMode = .scaleAspectFit
        cIv.translatesAutoresizingMaskIntoConstraints = false
        return cIv
    }()
    
    let cNameLabel: UILabel = {
          let cnLabel = UILabel()
//                   cnLabel.backgroundColor = UIColor.blue
          cnLabel.text = "TACOS"
          cnLabel.font = UIFont.boldSystemFont(ofSize: 16)
          cnLabel.textColor = .black
          cnLabel.translatesAutoresizingMaskIntoConstraints = false
          //          cnLabel.textAlignment = .left
          return cnLabel
      }()
    
    let cPriceLabel: UILabel = {
        let cplabel = UILabel()
//        cplabel.backgroundColor = .red
        cplabel.text = "$4.99"
        cplabel.font = UIFont.boldSystemFont(ofSize: 20)
        cplabel.textColor = .black
        return cplabel
    }()
    
    let cLikeButton: UIButton = {
             let cLButton = UIButton(type: .system)
             //                    cLButton.backgroundColor = UIColor.yellow
             cLButton.setImage( UIImage(named: "star-icons-png-6-2"), for: .normal)
             cLButton.tintColor = .yellow
             cLButton.translatesAutoresizingMaskIntoConstraints = false
             //                    cLButton.addTarget(self, action: #selector(self.fLButtonAction1), for: .touchUpInside)
             return cLButton
         }()
    
//    let cSegmentedControl: UISegmentedControl = {
//        let csc = UISegmentedControl(items: ["Info", "Customize", "Purchase"])
//        csc.tintColor = .darkGray
//        csc.selectedSegmentIndex = 0
//        return csc
//    }()
    
    let cDividerLineView: UIView = {
           let view = UIView()
        view.backgroundColor = .lightGray
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
    
    override func setupViews() {
        super.setupViews()
        
//        backgroundColor = .yellow

        addSubview(cImageView)
        addSubview(cNameLabel)
        addSubview(cPriceLabel)
        addSubview(cLikeButton)
//        addSubview(cSegmentedControl)
        addSubview(cDividerLineView)
        
        addConstraintsWithFormat(format: "H:|-14-[v0(100)]-8-[v1(80)]", view: cImageView, cNameLabel)
        addConstraintsWithFormat(format: "V:|-14-[v0(100)]|", view: cImageView)
    
        addConstraintsWithFormat(format: "V:|-24-[v0(20)]|", view: cNameLabel)
    
        addConstraintsWithFormat(format: "H:|-124-[v0(120)]|", view: cPriceLabel)
        addConstraintsWithFormat(format: "V:|-44-[v0(20)]|", view: cPriceLabel)
        
        addConstraintsWithFormat(format: "H:[v0(50)]-48-|", view: cLikeButton)
        addConstraintsWithFormat(format: "V:[v0(32)]-64-|", view: cLikeButton)
        
//        addConstraintsWithFormat(format: "H:|-40-[v0]-40-|", view: cSegmentedControl)
//        addConstraintsWithFormat(format: "V:[v0(34)]-8-|", view: cSegmentedControl)
        
        addConstraintsWithFormat(format: "H:|[v0]|", view: cDividerLineView)
        addConstraintsWithFormat(format: "V:[v0(0.5)]|", view: cDividerLineView)
        

    }
}

class CheeseSteakDescriptionCell: BaseCell {
    
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
