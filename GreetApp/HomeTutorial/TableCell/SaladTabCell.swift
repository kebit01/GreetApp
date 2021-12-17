//
//  SaladTabCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.//

import UIKit

class SaladTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let sCollectionTableCellId = "sCollectionTableCellId"

////        took of test 6 tesing6
//    static let identifier = "mCollectionTableCellId"

////    took this off testing 6 test 6
//    static func nib() -> UINib {
//               return UINib(nibName: "mCollectionTableCellId", bundle: nil)
//               }

        var sheader: sHeader? {
            didSet {

    //            if let mImageName = mphoto?.mImageName {
    //                CategoryImage.image = UIImage(named: mImageName)
    //
    //            }
                if let sheaderText = sheader?.sheaderText {
                    sTitleLbl.text = sheaderText

                }
            }
        }


    lazy var sTableCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let scv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        scv.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        scv.register(SalCollectionTableCell.self, forCellWithReuseIdentifier: sCollectionTableCellId)
        scv.translatesAutoresizingMaskIntoConstraints = false
        scv.backgroundColor = UIColor.purple
//        scv.backgroundColor = UIColor.soothingPink
        //        scv.backgroundColor = UIColor.clear
        scv.dataSource = self
        scv.delegate = self
        return scv
    }()

    let sTitleLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "hello"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

//    ////    took this off test 6 testing 6
//
//    override func awakeFromNib() {
//          super.awakeFromNib()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
        addSubview(sTitleLbl)
        addSubview(sTableCollectionView)

        sTitleLbl.topAnchor.constraint(equalTo: topAnchor).isActive = true
        sTitleLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        sTitleLbl.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        configureCollection()

    }

    func configureCollection() {

         let constraints = [
            sTableCollectionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            sTableCollectionView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            sTableCollectionView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            sTableCollectionView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)

         ]

         NSLayoutConstraint.activate(constraints)

     }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

//        return 1
        if let count =  sheader?.sphotos?.count {
                    return count

            }
                    return 0
            }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sCollectionTableCellId", for: indexPath) as! SalCollectionTableCell

        cell.sphoto = sheader?.sphotos?[indexPath.item]

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 250, height: 250)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



