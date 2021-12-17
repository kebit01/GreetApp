//
//  MexicanCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class MexicanCell: BaseCell, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var mheader: mHeader? {
                 didSet {
                   
                     if let mheaderText = mheader?.mheaderText {
                         menuLabel.text = mheaderText
                     }
                 }
             }

    var demoViewController: DemoViewController?

//    var headers: [Header]?

    lazy var mCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let mcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        mcv.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
//        mcv.translatesAutoresizingMaskIntoConstraints = false
//        mcv.backgroundColor = UIColor.lightGray
                mcv.backgroundColor = UIColor.soothingPink
        //        mcv.backgroundColor = UIColor.clear
        mcv.dataSource = self
        mcv.delegate = self
        return mcv
    }()
    
    let menuLabel: UILabel = {
         let mLabel = UILabel()
//         mLabel.backgroundColor = UIColor.blue
         mLabel.text = "FAVORITE"
         mLabel.font = UIFont.boldSystemFont(ofSize: 20)
         mLabel.translatesAutoresizingMaskIntoConstraints = false
         //          mLabel.textAlignment = .left
         return mLabel
     }()
    
    let dividerLineView: UIView = {
           let view = UIView()
           view.backgroundColor = .darkGray
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
    
    private let mexicanId2 = "mexicanId2"
    
    override func setupViews() {
        super.setupViews()
        
//        headers = Header.sampleTestCategories()

        backgroundColor = .orange
//        backgroundColor = UIColor.soothingPink

        addSubview(mCollectionView)
        addSubview(menuLabel)
        addSubview(dividerLineView)

        // add H: -15- constriants to view view
        addConstraintsWithFormat(format: "H:|[v0]|", view: mCollectionView)
        addConstraintsWithFormat(format: "V:|[v0]|", view: mCollectionView)
////
//        fCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
//        fCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
//        fCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        fCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
////        fCollectionView.heightAnchor.constraint(equalToConstant: 270).isActive = true
        
        menuLabel.topAnchor.constraint(equalTo: mCollectionView.topAnchor, constant: 5).isActive = true
        menuLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 5).isActive = true
        menuLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        menuLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        dividerLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerLineView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        dividerLineView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        mCollectionView.register(MexicanCell2.self, forCellWithReuseIdentifier: "mexicanId2")
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          
//         return 5
//    }
        if let count =  mheader?.mphotos?.count {
                return count
            
        }
                return 0
        }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

//        if indexPath.section == 0 {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mexicanId2", for: indexPath) as! MexicanCell2

            //                        as! MenuCell

        cell.mphoto = mheader?.mphotos?[indexPath.item]

//            cell.backgroundColor = .blue

            return cell

        }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
                  // original before
            //        return CGSize(width: frame.width , height: 260)
    
            return CGSize(width: 200, height: 200 - 30)
    
        }
    
         func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

            print ("mexicanapp selected")
            print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
            
            UIView.animate(withDuration: 1, delay: 9.9, usingSpringWithDamping: 10, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
//            UIView.animate(withDuration: 1.9, delay: 8.9, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
                        
                if let mphoto = self.mheader?.mphotos?[indexPath.item] {
                    self.demoViewController?.showMenuDetailFormPhoto(mphoto: mphoto)
        
        }
                
        }, completion: nil)
//    })
            
}
    //        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    //
    //            return 0
    //        }

}
        
        class MexicanCell2: BaseCell {
            
            override var isHighlighted: Bool {
                     didSet {
//
//                                 backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
//                                 print(isHighlighted)
                         
                                 pulse()
                         
                             }
                         }
            
             var mphoto: mPhoto? {
                 didSet {
            
                           if let mImageName = mphoto?.mImageName {
                                     mImageView1.image = UIImage(named: mImageName)
                                                                                     
                           }
                    
                            mNameLabel.text = mphoto?.mLabel

                       }
                   }
            

        
            fileprivate let mImageView1: UIImageView = {
                let mImageView1 = UIImageView()
                //                    ImageView1.backgroundColor = UIColor.red
                mImageView1.image = UIImage(named: "Tacos1" )
                mImageView1.layer.cornerRadius = 22
                mImageView1.clipsToBounds = true
                mImageView1.layer.masksToBounds = true
                mImageView1.contentMode = .scaleAspectFit
                mImageView1.translatesAutoresizingMaskIntoConstraints = false
                return mImageView1
            }()
            
            let mNameLabel: UILabel = {
                let mnLabel = UILabel()
                //         mnLabel.backgroundColor = UIColor.blue
                mnLabel.text = "TACOS"
                mnLabel.font = UIFont.boldSystemFont(ofSize: 20)
                mnLabel.textColor = .white
                mnLabel.translatesAutoresizingMaskIntoConstraints = false
                //          mnLabel.textAlignment = .left
                return mnLabel
            }()
            
            let mPriceLabel: UILabel = {
                let mplabel = UILabel()
                mplabel.text = "$4.99"
                mplabel.font = UIFont.boldSystemFont(ofSize: 20)
                mplabel.textColor = .darkGray
                return mplabel
            }()
            
       override func setupViews() {
           super.setupViews()
        
//        backgroundColor = .red
        
        addSubview(mImageView1)
        
        setupGradientLayer()
        
        addSubview(mNameLabel)
             
        mImageView1.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        mNameLabel.frame = CGRect(x: 20, y: 75, width: frame.width, height: frame.height)

        
        layer.cornerRadius = 15
        //        clipsToBounds = true
        
        layer.shadowColor = UIColor.blue.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 15
        
        }
            
            let gradientLayer = CAGradientLayer()
            
            fileprivate func setupGradientLayer() {
                
                gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
                gradientLayer.locations = [0.7,1.1]
                layer.cornerRadius = 10
                clipsToBounds = true
                layer.addSublayer(gradientLayer)
            }
            
            override func layoutSubviews() {
                super.layoutSubviews()
                
                gradientLayer.frame = bounds
            }

        func pulse() {

        let pulse = CASpringAnimation(keyPath: "transform.scale")

            pulse.duration = 0.4
            pulse.fromValue = 0.95
            pulse.toValue = 1
            pulse.autoreverses = true
            pulse.repeatCount = 1
            pulse.initialVelocity = 0.1
            pulse.damping = 1.0

            layer.add(pulse, forKey: nil)
        }
        
    }


