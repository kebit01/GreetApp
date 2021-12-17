//
//  CheeseSteaksCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class CheeseSteaksCell: BaseCell, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var cheader: cHeader? {
        didSet {
            
            if let cheaderText = cheader?.cheaderText {
                menuLabel.text = cheaderText
            }
        }
    }
    
    var demoViewController: DemoViewController?
    
    //    var headers: [Header]?
    
    lazy var cCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let ccv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        ccv.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        //        ccv.translatesAutoresizingMaskIntoConstraints = false
        //        ccv.backgroundColor = UIColor.lightGray
        ccv.backgroundColor = UIColor.soothingPink
        //        ccv.backgroundColor = UIColor.clear
        ccv.dataSource = self
        ccv.delegate = self
        return ccv
    }()
    
    let menuLabel: UILabel = {
        let mLabel = UILabel()
        //         mLabel.backgroundColor = UIColor.blue
        mLabel.text = "CHEESESTEAK"
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
    
    private let cheeseSteakId2 = "cheeseSteakId2"

    override func setupViews() {
        super.setupViews()
        
        //        headers = Header.sampleTestCategories()
        
        backgroundColor = .orange
        //        backgroundColor = UIColor.soothingPink
        
        addSubview(cCollectionView)
        addSubview(menuLabel)
        addSubview(dividerLineView)
        
        // add H: -15- constriants to view view
        addConstraintsWithFormat(format: "H:|[v0]|", view: cCollectionView)
        addConstraintsWithFormat(format: "V:|[v0]|", view: cCollectionView)
        ////
        //        fCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        //        fCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        //        fCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        //        fCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        ////        fCollectionView.heightAnchor.constraint(equalToConstant: 270).isActive = true
        
        menuLabel.topAnchor.constraint(equalTo: cCollectionView.topAnchor, constant: 5).isActive = true
        menuLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 5).isActive = true
        menuLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        menuLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        dividerLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerLineView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        dividerLineView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        cCollectionView.register(CheeseSteaksCell2.self, forCellWithReuseIdentifier: "cheeseSteakId2")
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //         return 5
        //    }
        if let count =  cheader?.cphotos?.count {
            return count
            
        }
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //        if indexPath.section == 0 {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cheeseSteakId2", for: indexPath) as! CheeseSteaksCell2
        
        //                        as! MenuCell
        
        cell.cphoto = cheader?.cphotos?[indexPath.item]
        
        //            cell.backgroundColor = .blue
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // original before
        //        return CGSize(width: frame.width , height: 260)
        
        return CGSize(width: 200, height: 200 - 30)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print ("cheesesteakapp selected")
        print ("Tapped cell at: \(indexPath.section) : \(indexPath.row)")
        
        UIView.animate(withDuration: 1, delay: 9.9, usingSpringWithDamping: 10, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            //            UIView.animate(withDuration: 1.9, delay: 8.9, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
            
            if let cphoto = self.cheader?.cphotos?[indexPath.item] {
                self.demoViewController?.showMenuDetailForcPhoto(cphoto: cphoto )
                
            }
            
        }, completion: nil)
        //    })
        
    }
    //        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    //
    //            return 0
    //        }
    
}

class CheeseSteaksCell2: BaseCell {
    
    override var isHighlighted: Bool {
        didSet {
            //
            //                                 backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
            //                                 print(isHighlighted)
            
            pulse()
            
        }
    }
    
    var cphoto: cPhoto? {
        didSet {
            
            if let cImageName = cphoto?.cImageName {
                cImageView1.image = UIImage(named: cImageName)
                
            }
            
            cNameLabel.text = cphoto?.cLabel

        }
    }
    

    
    fileprivate let cImageView1: UIImageView = {
        let cImageView1 = UIImageView()
        //                    ImageView1.backgroundColor = UIColor.red
        cImageView1.image = UIImage(named: "Tacos1" )
        cImageView1.layer.cornerRadius = 22
        cImageView1.clipsToBounds = true
        cImageView1.layer.masksToBounds = true
        cImageView1.contentMode = .scaleAspectFit
        cImageView1.translatesAutoresizingMaskIntoConstraints = false
        return cImageView1
    }()
    
    let cNameLabel: UILabel = {
        let cnLabel = UILabel()
        //         cnLabel.backgroundColor = UIColor.blue
        cnLabel.text = "TACOS"
        cnLabel.font = UIFont.boldSystemFont(ofSize: 20)
        cnLabel.textColor = .white
        cnLabel.translatesAutoresizingMaskIntoConstraints = false
        //          cnLabel.textAlignment = .left
        return cnLabel
    }()
    
    let cPriceLabel: UILabel = {
        let cplabel = UILabel()
        cplabel.text = "$4.99"
        cplabel.font = UIFont.boldSystemFont(ofSize: 20)
        cplabel.textColor = .darkGray
        return cplabel
    }()
    
    override func setupViews() {
        super.setupViews()
        
        //        backgroundColor = .red
        
        addSubview(cImageView1)
        
        setupGradientLayer()
        
        addSubview(cNameLabel)
        
        cImageView1.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        cNameLabel.frame = CGRect(x: 20, y: 75, width: frame.width, height: frame.height)

        
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

