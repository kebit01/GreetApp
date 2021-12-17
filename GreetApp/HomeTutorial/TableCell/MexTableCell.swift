//
//  MexTableCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class MexTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let mCollectionTableCellId = "mCollectionTableCellId"

////        took of test 6 tesing6
//    static let identifier = "mCollectionTableCellId"

////    took this off testing 6 test 6
//    static func nib() -> UINib {
//               return UINib(nibName: "mCollectionTableCellId", bundle: nil)
//               }

    //    testing5 test5 took this off
        var mheader: mHeader? {
            didSet {

    //            if let mImageName = mphoto?.mImageName {
    //                CategoryImage.image = UIImage(named: mImageName)
    //
    //            }
                if let mheaderText = mheader?.mheaderText {
                    mTitleLbl.text = mheaderText

                }
            }
        }


    lazy var mTableCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let mcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        mcv.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        mcv.register(MexCollectionTableCell.self, forCellWithReuseIdentifier: mCollectionTableCellId)
        mcv.translatesAutoresizingMaskIntoConstraints = false
        mcv.backgroundColor = UIColor.cyan
//        mcv.backgroundColor = UIColor.soothingPink
        //        mcv.backgroundColor = UIColor.clear
        mcv.dataSource = self
        mcv.delegate = self
        return mcv
    }()


    let mTitleLbl: UILabel = {
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
        addSubview(mTitleLbl)
        addSubview(mTableCollectionView)

        mTitleLbl.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mTitleLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        mTitleLbl.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        configureCollection()


    }

    func configureCollection() {

         let constraints = [
            mTableCollectionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
             mTableCollectionView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
             mTableCollectionView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
             mTableCollectionView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)

         ]

         NSLayoutConstraint.activate(constraints)

     }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

//        return 1
        if let count =  mheader?.mphotos?.count {
                    return count

            }
                    return 0
            }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mCollectionTableCellId", for: indexPath) as! MexCollectionTableCell

        cell.mphoto = mheader?.mphotos?[indexPath.item]

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 250, height: 250)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



