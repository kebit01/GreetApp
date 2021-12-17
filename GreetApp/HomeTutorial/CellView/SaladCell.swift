//
//  SaladCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class SaladCell: BaseCell, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var sheader: sHeader? {
        didSet {
            
            if let sheaderText = sheader?.sheaderText {
                menuLabel.text = sheaderText
            }
        }
    }
    
    var demoViewController: DemoViewController?
    
    //    var headers: [Header]?
    
    lazy var sCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let scv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        scv.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        //        scv.translatesAutoresizingMaskIntoConstraints = false
        //        scv.backgroundColor = UIColor.lightGray
        scv.backgroundColor = UIColor.soothingPink
        //        scv.backgroundColor = UIColor.clear
        scv.dataSource = self
        scv.delegate = self
        return scv
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
    
    private let saladId2 = "saladId2"
    
    override func setupViews() {
        super.setupViews()
        
        //        headers = Header.sampleTestCategories()
        
        backgroundColor = .orange
        //        backgroundColor = UIColor.soothingPink
        
        addSubview(sCollectionView)
        addSubview(menuLabel)
        addSubview(dividerLineView)
        
        // add H: -15- constriants to view view
        addConstraintsWithFormat(format: "H:|[v0]|", view: sCollectionView)
        addConstraintsWithFormat(format: "V:|[v0]|", view: sCollectionView)
        ////
        //        fCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        //        fCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        //        fCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        //        fCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        ////        fCollectionView.heightAnchor.constraint(equalToConstant: 270).isActive = true
        
        menuLabel.topAnchor.constraint(equalTo: sCollectionView.topAnchor, constant: 5).isActive = true
        menuLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 5).isActive = true
        menuLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        menuLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        dividerLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerLineView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        dividerLineView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        sCollectionView.register(SaladCell2.self, forCellWithReuseIdentifier: "saladId2")
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //         return 5
        //    }
        if let count =  sheader?.sphotos?.count {
            return count
            
        }
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //        if indexPath.section == 0 {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "saladId2", for: indexPath) as! SaladCell2
        
        //                        as! MenuCell
        
        cell.sphoto = sheader?.sphotos?[indexPath.item]
        
        //            cell.backgroundColor = .blue
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // original before
        //        return CGSize(width: frame.width , height: 260)
        
        return CGSize(width: 200, height: 200 - 30)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print ("saladapp selected")
        print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
        
        UIView.animate(withDuration: 1, delay: 9.9, usingSpringWithDamping: 10, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            //            UIView.animate(withDuration: 1.9, delay: 8.9, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
            
            if let sphoto = self.sheader?.sphotos?[indexPath.item] {
                self.demoViewController?.showMenuDetailForsPhoto(sphoto: sphoto)
                
            }
            
        }, completion: nil)
        //    })
        
    }
    //        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    //
    //            return 0
    //        }
    
}

class SaladCell2: BaseCell {
    
    override var isHighlighted: Bool {
        didSet {
            //
            //                                 backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
            //                                 print(isHighlighted)
            
            pulse()
            
        }
    }
    
    var sphoto: sPhoto? {
        didSet {
            
            if let sImageName = sphoto?.sImageName {
                sImageView1.image = UIImage(named: sImageName)
                
            }
            
            sNameLabel.text = sphoto?.sLabel

        }
    }
    

    
    fileprivate let sImageView1: UIImageView = {
        let sImageView1 = UIImageView()
        //                    ImageView1.backgroundColor = UIColor.red
        sImageView1.image = UIImage(named: "Tacos1" )
        sImageView1.layer.cornerRadius = 22
        sImageView1.clipsToBounds = true
        sImageView1.layer.masksToBounds = true
        sImageView1.contentMode = .scaleAspectFit
        sImageView1.translatesAutoresizingMaskIntoConstraints = false
        return sImageView1
    }()
    
    let sNameLabel: UILabel = {
        let snLabel = UILabel()
        //         snLabel.backgroundColor = UIColor.blue
        snLabel.text = "TACOS"
        snLabel.font = UIFont.boldSystemFont(ofSize: 20)
        snLabel.textColor = .white
        snLabel.translatesAutoresizingMaskIntoConstraints = false
        //          snLabel.textAlignment = .left
        return snLabel
    }()
    
    let sPriceLabel: UILabel = {
        let splabel = UILabel()
        splabel.text = "$4.99"
        splabel.font = UIFont.boldSystemFont(ofSize: 20)
        splabel.textColor = .darkGray
        return splabel
    }()
    
    override func setupViews() {
        super.setupViews()
        
        //        backgroundColor = .red
        
        addSubview(sImageView1)
        
        setupGradientLayer()
        
        addSubview(sNameLabel)
        
        sImageView1.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        sNameLabel.frame = CGRect(x: 20, y: 75, width: frame.width, height: frame.height)

        
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






