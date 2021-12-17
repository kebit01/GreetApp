//
//  CheeseSteakImageCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

// old code RealChance1

class CPhoto1: NSObject {
    let cImageName1: String
    //    let headerText2: String
    
    init(cImageName1: String) {
        //        self.headerText2 = headerText2
        self.cImageName1 = cImageName1
    }
}

class CheeseSteakImageCell: BaseCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
        
    // added this code
//    var appCategories2: [AppCategory2]?

    // joses code
//    var breakfastImages: [String]?{
//        didSet{
//            collectionView.reloadData()
//        }
//    }
//
//    var lunchImages: [String]?{
//           didSet{
//               collectionView.reloadData()
//           }
//       }
//
//    var dinnerImages: [String]?{
//          didSet{
//              collectionView.reloadData()
//          }
//      }
//
//    var demoImages: [String]?{
//            didSet{
//                collectionView.reloadData()
//            }
//        }
//
//    var demoImages2: [String]?{
//            didSet{
//                collectionView.reloadData()
//            }
//        }
    
    // old code RealChance1
    
    let cphotos1 = [
                  CPhoto1(cImageName1: "step-1"),
                   CPhoto1(cImageName1: "step-2"),
                    CPhoto1(cImageName1: "step-3")
    
                  //        ,
                  //        SPhoto(sImageName: "email-1", headerText2: "Messages")
    
              ]
    
        let collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
            //        cv.translatesAutoresizingMaskIntoConstraints = false
//            cv.backgroundColor = .red
            cv.backgroundColor = UIColor.clear
            return cv
        }()
    
    let dividerLineView: UIView = {
          let view = UIView()
          view.backgroundColor = .lightGray
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
      }()
    
   let imageId2 = "imageId2"
    
    override func setupViews() {
        super.setupViews()
        
        // added this code
//        appCategories2 = AppCategory2.sampleAppCategories2()

        
        //            backgroundColor = .brown
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        addSubview(collectionView)
        addSubview(dividerLineView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", view: collectionView)
        
        addConstraintsWithFormat(format: "H:|-14-[v0]-14-|", view: dividerLineView)

        addConstraintsWithFormat(format: "V:|[v0][v1(1)]|", view: collectionView, dividerLineView)
        
        collectionView.register(CheeseSteakImageCell2.self, forCellWithReuseIdentifier: "imageId2")
        
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//
//        return 1
//
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

//        return 3
//    }

//        // added this code
//   if let count = appCategories2?.count {
//         return count
//     }
//     return 0
// }
        
        // old code RealChance1
        return cphotos1.count

    }
 
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageId2", for: indexPath) as! CheeseSteakImageCell2
        
        // added this code
//        cell.appCategory2 = appCategories2?[indexPath.item]
        
        //old code RealChance1
        
        let cphoto1 = cphotos1[indexPath.item]
                     cell.cphoto1 = cphoto1
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: frame.height - 28)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    class CheeseSteakImageCell2: BaseCell {
        
//        // added this code
//        var appCategory2: AppCategory2? {
//              didSet {
//
//                  if let tImage2 = appCategory2?.tImage2 {
//                      sImageView2.image = UIImage(named: tImage2)
//
//                  }
//            }
//
//        }
        
        //old code RealChance1
        
        var cphoto1: CPhoto1? {
            didSet {
                //      print(slide?.imageName)
                
                guard let unwarappedSlide = cphoto1 else { return }
                
                //                  messageLabel.text = unwarappedSlide.headerText
                
                cImageView2.image = UIImage(named: unwarappedSlide.cImageName1)
                
            }
        }
        
        let cImageView2: UIImageView = {
            let cImageView2 = UIImageView()
//            cImageView2.backgroundColor = UIColor.green
            //              cImageView2.image = UIImage(named: "Tacos1" )
            cImageView2.layer.cornerRadius = 22
            cImageView2.layer.masksToBounds = true
            cImageView2.contentMode = .scaleAspectFill
            cImageView2.translatesAutoresizingMaskIntoConstraints = false
            return cImageView2
        }()
        
        override func setupViews() {
            super.setupViews()
            
//            backgroundColor = .yellow
            
            addSubview(cImageView2)
            
            addConstraintsWithFormat(format: "H:|[v0]|", view: cImageView2)
            addConstraintsWithFormat(format: "V:|[v0]|", view: cImageView2)
            
        }
    }
    
}

