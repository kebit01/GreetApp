//
//  CheCollectionTableCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class CheCollectionTableCell: BaseCell {
    
    var cphoto: cPhoto? {
        didSet {
            
            if let cImageName = cphoto?.cImageName {
                cCategoryImage.image = UIImage(named: cImageName)
                
            }
            
            cCategoryLbl.text = cphoto?.cLabel
            
        }
    }

    
////    took this off testing 6 test 6
//    static let identifier = "MexCollectionTableCell"
//
//    static func nib() -> UINib {
//               return UINib(nibName: "MexCollectionTableCell", bundle: nil)
//               }
    
    let cCategoryLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lbl.textAlignment = .right
        return lbl
    }()
    
    let cCategoryImage: UIImageView = {
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
        
        addSubview(cCategoryLbl)
        addSubview(cCategoryImage)
        
        
        cCategoryImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cCategoryImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        cCategoryImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        //    titleLbl.trailingAnchor.constraint(equalTo: categoryLbl.leadingAnchor).isActive = true
        cCategoryImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        cCategoryLbl.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cCategoryLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        cCategoryLbl.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

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






