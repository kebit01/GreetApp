//
//  MexCollectionTableCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class MexCollectionTableCell: BaseCell {
    
    var mphoto: mPhoto? {
        didSet {
            
            //            if let mImageName = mphoto?.mImageName {
            //                mCategoryImage.image = UIImage(named: mImageName)
            //
            //            }
            //
            //            mCategoryLbl.text = mphoto?.mLabel
            //
            //        }
            //    }
            
            
            if let mImageName = mphoto?.mImageName {
                mCategoryImage.image = UIImage(named: mImageName)
                
            }
            
            mCategoryLbl.text = mphoto?.mLabel
            
            if let mPrice = mphoto?.mPrice {
                mCategoryPrice.text = "Price: $\(mPrice)"
            } else {
                mCategoryPrice.text = ""
            }
            
        }
        
    }
    
////    took this off testing 6 test 6
//    static let identifier = "MexCollectionTableCell"
//
//    static func nib() -> UINib {
//               return UINib(nibName: "MexCollectionTableCell", bundle: nil)
//               }
    
    let mCategoryImage: UIImageView = {
        let iView = UIImageView()
        iView.image = UIImage(named: "step-1")
        iView.translatesAutoresizingMaskIntoConstraints = false
        iView.contentMode = .scaleAspectFit
        return iView
    }()
    
    let mCategoryLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
//        lbl.backgroundColor = .green
        lbl.textAlignment = .center
        return lbl
    }()
    
    let mCategoryPrice: UILabel = {
        let mclabel = UILabel()
//        mclabel.backgroundColor = .red
        mclabel.text = "$4.99"
        mclabel.font = UIFont.boldSystemFont(ofSize: 20)
        mclabel.translatesAutoresizingMaskIntoConstraints = false
        mclabel.textColor = .black
        return mclabel
    }()
    
//    ////    took this off testing6 test6
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
        
        
//            override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//                super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    override func setupViews() {
            super.setupViews()
        
        addSubview(mCategoryLbl)
        addSubview(mCategoryImage)
        addSubview(mCategoryPrice)

        
        mCategoryImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mCategoryImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        mCategoryImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        //    titleLbl.trailingAnchor.constraint(equalTo: categoryLbl.leadingAnchor).isActive = true
        mCategoryImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        mCategoryLbl.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        mCategoryLbl.leadingAnchor.constraint(equalTo: mCategoryImage.trailingAnchor).isActive = true
        mCategoryLbl.bottomAnchor.constraint(equalTo: mCategoryPrice.topAnchor, constant: -10).isActive = true
        mCategoryLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
//        mCategoryLbl.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
//        mCategoryPrice.topAnchor.constraint(equalTo: mCategoryLbl.bottomAnchor, constant: 10).isActive = true
        mCategoryPrice.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        mCategoryPrice.heightAnchor.constraint(equalToConstant: 20).isActive = true
        mCategoryPrice.leadingAnchor.constraint(equalTo: mCategoryImage.trailingAnchor).isActive = true
//        mCategoryPrice.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        mCategoryPrice.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true




          
        
    }
    
    ////    took this off testing 5 test 5
    //override func setSelected(_ selected: Bool, animated: Bool) {
    //    super.setSelected(selected, animated: animated)
    //}
    
////    took this off testing6 test 6
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
}



