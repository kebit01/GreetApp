//
//  SaladImageCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

// old code RealChance1

class SPhoto1: NSObject {
    let sImageName1: String
    //    let headerText2: String
    
    init(sImageName1: String) {
        //        self.headerText2 = headerText2
        self.sImageName1 = sImageName1
    }
}

class SaladImageCell: BaseCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
        
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
    
    let sphotos1 = [
                  SPhoto1(sImageName1: "Tacos1"),
                   SPhoto1(sImageName1: "Tacos3"),
                    SPhoto1(sImageName1: "Tacos72")
    
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
        
        collectionView.register(SaladImageCell2.self, forCellWithReuseIdentifier: "imageId2")
        
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
        return sphotos1.count

    }
 
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageId2", for: indexPath) as! SaladImageCell2
        
        // added this code
//        cell.appCategory2 = appCategories2?[indexPath.item]
        
        //old code RealChance1
        
        let sphoto1 = sphotos1[indexPath.item]
                     cell.sphoto1 = sphoto1
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: frame.height - 28)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    class SaladImageCell2: BaseCell {
        
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
        
        var sphoto1: SPhoto1? {
            didSet {
                //      print(slide?.imageName)
                
                guard let unwarappedSlide = sphoto1 else { return }
                
                //                  messageLabel.text = unwarappedSlide.headerText
                
                sImageView2.image = UIImage(named: unwarappedSlide.sImageName1)
                
            }
        }
        
        let sImageView2: UIImageView = {
            let sImageView2 = UIImageView()
//            sImageView2.backgroundColor = UIColor.green
            //              sImageView2.image = UIImage(named: "Tacos1" )
            sImageView2.layer.cornerRadius = 22
            sImageView2.layer.masksToBounds = true
            sImageView2.contentMode = .scaleAspectFill
            sImageView2.translatesAutoresizingMaskIntoConstraints = false
            return sImageView2
        }()
        
        override func setupViews() {
            super.setupViews()
            
//            backgroundColor = .yellow
            
            addSubview(sImageView2)
            
            addConstraintsWithFormat(format: "H:|[v0]|", view: sImageView2)
            addConstraintsWithFormat(format: "V:|[v0]|", view: sImageView2)
            
        }
    }
    
}

