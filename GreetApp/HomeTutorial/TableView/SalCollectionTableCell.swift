//
//  SalCollectionTableCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class SalCollectionTableCell: BaseCell {
    
    var sphoto: sPhoto? {
        didSet {
            
            if let sImageName = sphoto?.sImageName {
                sCategoryImage.image = UIImage(named: sImageName)
                
            }
            
            sCategoryLbl.text = sphoto?.sLabel
            
        }
    }

////    took this off testing 6 test 6
//    static let identifier = "MexCollectionTableCell"
//
//    static func nib() -> UINib {
//               return UINib(nibName: "MexCollectionTableCell", bundle: nil)
//               }
    
    let sCategoryLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lbl.textAlignment = .right
        return lbl
    }()
    
    let sCategoryImage: UIImageView = {
        let iView = UIImageView()
        iView.image = UIImage(named: "step-1")
        iView.translatesAutoresizingMaskIntoConstraints = false
        iView.contentMode = .scaleAspectFit
        return iView
    }()
    
//    ////    took this off testing6 test6
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
        
        
//            override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//                super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    override func setupViews() {
                 super.setupViews()
        
        addSubview(sCategoryLbl)
        addSubview(sCategoryImage)
        
        
        sCategoryImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        sCategoryImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        sCategoryImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        //    sCategoryImage.trailingAnchor.constraint(equalTo: categoryLbl.leadingAnchor).isActive = true
        sCategoryImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        sCategoryLbl.topAnchor.constraint(equalTo: topAnchor).isActive = true
        sCategoryLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        sCategoryLbl.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
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




