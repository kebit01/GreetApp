//
//  CheeseTableCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class CheeseTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let cCollectionTableCellId = "cCollectionTableCellId"

////        took of test 6 tesing6
//    static let identifier = "mCollectionTableCellId"

////    took this off testing 6 test 6
//    static func nib() -> UINib {
//               return UINib(nibName: "mCollectionTableCellId", bundle: nil)
//               }

    //    testing5 test5 took this off
        var cheader: cHeader? {
            didSet {

    //            if let mImageName = mphoto?.mImageName {
    //                CategoryImage.image = UIImage(named: mImageName)
    //
    //            }
                if let cheaderText = cheader?.cheaderText {
                    cTitleLbl.text = cheaderText

                }
            }
        }


    lazy var cTableCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let ccv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        ccv.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        ccv.register(CheCollectionTableCell.self, forCellWithReuseIdentifier: cCollectionTableCellId)
        ccv.translatesAutoresizingMaskIntoConstraints = false
        ccv.backgroundColor = UIColor.green
//        ccv.backgroundColor = UIColor.soothingPink
        //        ccv.backgroundColor = UIColor.clear
        ccv.dataSource = self
        ccv.delegate = self
        return ccv
    }()


    let cTitleLbl: UILabel = {
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
        addSubview(cTitleLbl)
        addSubview(cTableCollectionView)

        cTitleLbl.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cTitleLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        cTitleLbl.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        configureCollection()


    }

    func configureCollection() {

         let constraints = [
            cTableCollectionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
             cTableCollectionView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
             cTableCollectionView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
             cTableCollectionView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)

         ]

         NSLayoutConstraint.activate(constraints)

     }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 1
        if let count =  cheader?.cphotos?.count {
                    return count

            }
                    return 0
            }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cCollectionTableCellId", for: indexPath) as! CheCollectionTableCell

        //            testing4 test4
        cell.cphoto = cheader?.cphotos?[indexPath.item]

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 250, height: 250)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}




