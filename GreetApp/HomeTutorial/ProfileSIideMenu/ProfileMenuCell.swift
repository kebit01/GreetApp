//
//  ProfileMenuCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

//import UIKit
////import FirebaseDatabase
////import FirebaseAuth
//
////SlideMenuCell5
//class ProfileMenuCell: BaseCell {
//
//    override var isHighlighted: Bool {
//        didSet {
//
//            backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
//            print(isHighlighted)
//        }
//    }
//
//    var setting: Setting? {
//        didSet {
//            //      print(slide?.imageName)
//
//            guard let unwarappedSlide = setting else { return }
//
//            messageLabel.text = unwarappedSlide.headerText
//
//            messageImageView.image = UIImage(named: unwarappedSlide.imageName)
//
//        }
//    }
//
//    let messageLabel: UILabel = {
//        let mlabel = UILabel()
////                mlabel.backgroundColor = UIColor.green
//        mlabel.text = "Messages"
//        return mlabel
//    }()
//
//    let messageImageView: UIImageView = {
//        let messageView = UIImageView()
//        //        messageView.backgroundColor = UIColor.red
//        messageView.image = UIImage(named: "email-1" )
//        messageView.layer.cornerRadius = 22
//        messageView.layer.masksToBounds = true
//        return messageView
//    }()
//
//    override func setupViews() {
//        super.setupViews()
//
//        //                backgroundColor = UIColor.purple
//        //        backgroundColor = UIColor.soothingPink
//        backgroundColor = UIColor.white
//
//        addSubview(messageLabel)
//        addSubview(messageImageView)
//
//        addConstraintsWithFormat(format: "H:|-16-[v0(30)]-8-[v1]-16-|", view: messageImageView, messageLabel)
//
//        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: messageLabel)
//
//        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: messageImageView)
//
//        addConstraints([NSLayoutConstraint(item: messageImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
//
//    }
//}
//
//class ProfileCell: BaseCell, UITextFieldDelegate {
//
//    override var isHighlighted: Bool {
//        didSet {
//
//            backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
//            print(isHighlighted)
//        }
//    }
//
//    var edit: Edit? {
//        didSet {
//            //      print(slide?.imageName)
//
//            guard let unwarappedSlide = edit else { return }
//
//            //TOOK THIS OFF NOT SURE IF NEEDED!!
////            profileLabel.text = unwarappedSlide.headerText2
//
//            profileImageView.image = UIImage(named: unwarappedSlide.imageName2)
//
//        }
//    }
//
//    private let profileLabel: UITextField = {
//        let username = UITextField()
//        //emailField.placeholder = "Email Address"
//        username.attributedPlaceholder = NSAttributedString (string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        username.layer.borderWidth = 1
//        username.layer.borderColor = UIColor.black.cgColor
//        username.backgroundColor = .white
//        username.autocapitalizationType = .none
//        username.leftViewMode = .always
//        username.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        username.textColor = .black
//        username.isUserInteractionEnabled = false
//        return username
//    }()
//
//    let profileImageView: UIImageView = {
//        let profileView = UIImageView()
////                profileView.backgroundColor = UIColor.red
//        profileView.image = UIImage(named: "profile-1" )
//        profileView.layer.cornerRadius = 22
//        profileView.layer.masksToBounds = true
//        return profileView
//    }()
//
//    let editLabel: UILabel = {
//        let elabel = UILabel()
////        elabel.backgroundColor = UIColor.green
//        elabel.text = "Tap to edit Profile"
//        return elabel
//    }()
//
//    let profileSeporatorView: UIView = {
//        let view = UIView()
//        view.backgroundColor = UIColor.darkGray
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//
//    }()
//
//    private let numberLabel: UITextField = {
//        let phone_number = UITextField()
//        //emailField.placeholder = "Email Address"
//        phone_number.attributedPlaceholder = NSAttributedString (string: "Phone number", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        phone_number.layer.borderWidth = 1
//        phone_number.layer.borderColor = UIColor.black.cgColor
//        phone_number.backgroundColor = .white
//        phone_number.autocapitalizationType = .none
//        phone_number.leftViewMode = .always
//        phone_number.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        phone_number.textColor = .black
//        phone_number.isUserInteractionEnabled = false
//        return phone_number
//    }()
//
//    let numberView: UIImageView = {
//        let numberView = UIImageView()
////                numberView.backgroundColor = UIColor.green
//        numberView.image = UIImage(named: "phone.png" )
//        numberView.layer.cornerRadius = 22
//        numberView.layer.masksToBounds = true
//        return numberView
//    }()
//
//    let birthdayLabel: UILabel = {
//        let bdaylabel = UILabel()
//        //        bdaylabel.backgroundColor = UIColor.gray
//        bdaylabel.text = "05/05/1993"
//        return bdaylabel
//    }()
//
//    let birthdayImageView: UIImageView = {
//        let bdayView = UIImageView()
//        //        bdayView.backgroundColor = UIColor.green
//        bdayView.image = UIImage(named: "birthday.png" )
//        bdayView.layer.cornerRadius = 22
//        bdayView.layer.masksToBounds = true
//        return bdayView
//    }()
//
//    let emailLabel: UILabel = {
//        let elabel = UILabel()
//        //        elabel.backgroundColor = UIColor.gray
//        elabel.text = "Kcortiz94@gmail.com"
//        return elabel
//    }()
//
//    let emailImageView: UIImageView = {
//        let emailView = UIImageView()
//        //        emailView.backgroundColor = UIColor.green
//        emailView.image = UIImage(named: "email-png" )
//        emailView.layer.cornerRadius = 22
//        emailView.layer.masksToBounds = true
//        return emailView
//    }()
//
//    override func setupViews() {
//        super.setupViews()
//
//        //        backgroundColor = UIColor.purple
//        //        backgroundColor = UIColor.soothingPink
//        backgroundColor = UIColor.white
//
//        var ref: DatabaseReference!
//
//        ref = Database.database().reference()
//
//        //ref.childByAutoId().setValue(["username":"Mario", "phone_number":"510-555-7777", "role":"seller", "rating":4])
//
//        let user = FirebaseAuth.Auth.auth().currentUser
//        let userid = user?.uid
//
//        //let userID = Auth.auth().currentUser?.uid
//        ref.child("users").child(userid!).observeSingleEvent(of: .value, with: { (snapshot) in
//            // Get user value
//            let value = snapshot.value as? NSDictionary
//            let username1 = value?["username"] as? String ?? ""
//            let phone1 = value?["phone"] as? String ?? ""
//            //let user = User(username: username)
////                        print(username1)
//            ////            self.username.text = username1
//            ////            self.phone_number.text = phone1
//            self.profileLabel.text = username1
//            self.numberLabel.text = phone1
//
//            // ...
//        }) { (error) in
//            print(error.localizedDescription)
//        }
//
//        addSubview(profileLabel)
//        addSubview(profileImageView)
//        addSubview(editLabel)
//        addSubview(profileSeporatorView)
//        addSubview(numberView)
//        addSubview(numberLabel)
//        addSubview(birthdayLabel)
//        addSubview(birthdayImageView)
//        addSubview(emailLabel)
//        addSubview(emailImageView)
//
//        addConstraintsWithFormat(format: "H:|-5-[v0(30)]-3-[v1]-3-[v2]-5-|", view: profileImageView, profileLabel, editLabel)
//
//        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: profileLabel)
//
//        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: profileImageView)
//
//        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: editLabel)
//
//        addConstraints([NSLayoutConstraint(item: profileImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
//
//        profileSeporatorView.topAnchor.constraint(equalTo: profileLabel.bottomAnchor, constant: 2).isActive = true
//        profileSeporatorView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        profileSeporatorView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        profileSeporatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
//
//        addConstraintsWithFormat(format: "H:|-62-[v0(30)]-8-[v1]-32-|", view: numberView, numberLabel)
//        addConstraintsWithFormat(format: "V:|-72-[v0(50)]-72-|", view: numberLabel)
//
//        addConstraintsWithFormat(format: "V:|-72-[v0(50)]-72-|", view: numberView)
//
//        addConstraintsWithFormat(format: "H:|-62-[v0(30)]-8-[v1]-32-|", view: birthdayImageView, birthdayLabel)
//        addConstraintsWithFormat(format: "V:|-126-[v0(50)]-126-|", view: birthdayLabel)
//
//        addConstraintsWithFormat(format: "V:|-126-[v0(50)]-126-|", view: birthdayImageView)
//
//        addConstraintsWithFormat(format: "H:|-62-[v0(30)]-8-[v1]-32-|", view: emailImageView, emailLabel)
//        addConstraintsWithFormat(format: "V:|-182-[v0(50)]-182-|", view: emailLabel)
//
//        addConstraintsWithFormat(format: "V:|-182-[v0(50)]-182-|", view: emailImageView)
//
//        addConstraints([NSLayoutConstraint(item: numberView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
//
//    }
//
//}
//
