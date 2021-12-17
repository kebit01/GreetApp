//
//  MexicanImageCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

// old code RealChance1

class MPhoto1: NSObject {
    let mImageName1: String
    //    let headerText2: String
    
    init(mImageName1: String) {
        //        self.headerText2 = headerText2
        self.mImageName1 = mImageName1
    }
}

class MexicanImageCell: BaseCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
        
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
    
    let mphotos1 = [
                  MPhoto1(mImageName1: "RaidAthletic"),
                   MPhoto1(mImageName1: "mexico"),
                    MPhoto1(mImageName1: "warriors")
    
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
        
        collectionView.register(MexicanImageCell2.self, forCellWithReuseIdentifier: "imageId2")
        
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
        return mphotos1.count

    }
 
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageId2", for: indexPath) as! MexicanImageCell2
        
        // added this code
//        cell.appCategory2 = appCategories2?[indexPath.item]
        
        //old code RealChance1
        
        let mphoto1 = mphotos1[indexPath.item]
                     cell.mphoto1 = mphoto1
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: frame.height - 28)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    class MexicanImageCell2: BaseCell {
        
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
        
        var mphoto1: MPhoto1? {
            didSet {
                //      print(slide?.imageName)
                
                guard let unwarappedSlide = mphoto1 else { return }
                
                //                  messageLabel.text = unwarappedSlide.headerText
                
                mImageView2.image = UIImage(named: unwarappedSlide.mImageName1)
                
            }
        }
        
        let mImageView2: UIImageView = {
            let mImageView2 = UIImageView()
//            mImageView2.backgroundColor = UIColor.green
            //              mImageView2.image = UIImage(named: "Tacos1" )
            mImageView2.layer.cornerRadius = 22
            mImageView2.layer.masksToBounds = true
            mImageView2.contentMode = .scaleAspectFill
            mImageView2.translatesAutoresizingMaskIntoConstraints = false
            return mImageView2
        }()
        
        override func setupViews() {
            super.setupViews()
            
//            backgroundColor = .yellow
            
            addSubview(mImageView2)
            
            addConstraintsWithFormat(format: "H:|[v0]|", view: mImageView2)
            addConstraintsWithFormat(format: "V:|[v0]|", view: mImageView2)
            
        }
    }
    
}

