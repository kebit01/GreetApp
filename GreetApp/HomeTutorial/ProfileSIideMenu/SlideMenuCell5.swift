//
//  SlideMenuCell5.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class SlideMenuCell5: BaseCell {
    
    override var isHighlighted: Bool {
        didSet {
            
            backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
            print(isHighlighted)
        }
    }
    
    var setting: Setting? {
        didSet {
            //      print(slide?.imageName)
            
            guard let unwarappedSlide = setting else { return }
            
            messageLabel.text = unwarappedSlide.headerText
            
            messageImageView.image = UIImage(named: unwarappedSlide.imageName)
            
        }
    }
    
    let messageLabel: UILabel = {
        let mlabel = UILabel()
        //        mlabel.backgroundColor = UIColor.green
        mlabel.text = "Messages"
        return mlabel
    }()
    
    let messageImageView: UIImageView = {
        let messageView = UIImageView()
        //        messageView.backgroundColor = UIColor.red
        messageView.image = UIImage(named: "email-1" )
        messageView.layer.cornerRadius = 22
        messageView.layer.masksToBounds = true
        return messageView
    }()
    
    override func setupViews() {
        super.setupViews()
        
//                backgroundColor = UIColor.purple
        //        backgroundColor = UIColor.soothingPink
        backgroundColor = UIColor.white
        
        
        
        
        addSubview(messageLabel)
        addSubview(messageImageView)
        
        addConstraintsWithFormat(format: "H:|-16-[v0(30)]-8-[v1]-16-|", view: messageImageView, messageLabel)
        
        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: messageLabel)
        
        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: messageImageView)
        
        addConstraints([NSLayoutConstraint(item: messageImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
        
    }
}

class ProfileCell: BaseCell {

override var isHighlighted: Bool {
        didSet {

            backgroundColor = isHighlighted ? UIColor.yellow : UIColor.white
            print(isHighlighted)
        }
    }

    var edit: Edit? {
        didSet {
            //      print(slide?.imageName)

            guard let unwarappedSlide = edit else { return }

            profileLabel.text = unwarappedSlide.headerText2

            profileImageView.image = UIImage(named: unwarappedSlide.imageName2)

        }
    }


    let profileLabel: UILabel = {
        let plabel = UILabel()
//        plabel.backgroundColor = UIColor.green
        plabel.text = "Profile"
        return plabel
    }()

    let profileImageView: UIImageView = {
        let profileView = UIImageView()
//        profileView.backgroundColor = UIColor.red
        profileView.image = UIImage(named: "profile-1" )
        profileView.layer.cornerRadius = 22
        profileView.layer.masksToBounds = true
        return profileView
    }()

    let editLabel: UILabel = {
        let elabel = UILabel()
        //        elabel.backgroundColor = UIColor.green
        elabel.text = "Edit"
        return elabel
    }()

    let EditView: UIImageView = {
            let editView = UIImageView()
            //        imageView.backgroundColor = UIColor.green
            editView.image = UIImage(named: "arrow-1" )
            editView.layer.cornerRadius = 22
            editView.layer.masksToBounds = true
            return editView
        }()

        let profileSeporatorView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.darkGray
            view.translatesAutoresizingMaskIntoConstraints = false
            return view

        }()

        let numberLabel: UILabel = {
            let numlabel = UILabel()
    //        numlabel.backgroundColor = UIColor.gray
            numlabel.text = "1800deznuts"
            return numlabel
        }()

        let numberView: UIImageView = {
            let numberView = UIImageView()
    //        numberView.backgroundColor = UIColor.green
            numberView.image = UIImage(named: "phone.png" )
            numberView.layer.cornerRadius = 22
            numberView.layer.masksToBounds = true
            return numberView
        }()

        let birthdayLabel: UILabel = {
            let bdaylabel = UILabel()
    //        bdaylabel.backgroundColor = UIColor.gray
            bdaylabel.text = "06/24/2012"
            return bdaylabel
        }()

        let birthdayImageView: UIImageView = {
            let bdayView = UIImageView()
    //        bdayView.backgroundColor = UIColor.green
            bdayView.image = UIImage(named: "birthday.png" )
            bdayView.layer.cornerRadius = 22
            bdayView.layer.masksToBounds = true
            return bdayView
        }()

        let emailLabel: UILabel = {
            let elabel = UILabel()
    //        elabel.backgroundColor = UIColor.gray
            elabel.text = "Kcortiz94@gmail.com"
            return elabel
        }()

        let emailImageView: UIImageView = {
            let emailView = UIImageView()
    //        emailView.backgroundColor = UIColor.green
            emailView.image = UIImage(named: "email-png" )
            emailView.layer.cornerRadius = 22
            emailView.layer.masksToBounds = true
            return emailView
        }()


    override func setupViews() {
        super.setupViews()

//        backgroundColor = UIColor.purple
//        backgroundColor = UIColor.soothingPink
        backgroundColor = UIColor.white


        addSubview(profileLabel)
        addSubview(profileImageView)
        addSubview(editLabel)
        addSubview(EditView)
        addSubview(profileSeporatorView)
        addSubview(numberView)
        addSubview(numberLabel)
        addSubview(birthdayLabel)
        addSubview(birthdayImageView)
        addSubview(emailLabel)
        addSubview(emailImageView)

//        addConstraintsWithFormat(format: "H:|-16-[v0(30)]-8-[v1]-16-|", view: profileImageView, profileLabel)
//        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: profileLabel)

        addConstraintsWithFormat(format: "H:|-16-[v0(30)]-8-[v1]-8-[v2]-8-[v3(30)]-16-|", view: profileImageView, profileLabel, editLabel, EditView)

        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: profileLabel)

        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: profileImageView)

        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: editLabel)

        addConstraintsWithFormat(format: "V:|-16-[v0(50)]-16-|", view: EditView)

        addConstraints([NSLayoutConstraint(item: profileImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])

        profileSeporatorView.topAnchor.constraint(equalTo: profileLabel.bottomAnchor).isActive = true
        profileSeporatorView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        profileSeporatorView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        profileSeporatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        addConstraintsWithFormat(format: "H:|-62-[v0(30)]-8-[v1]-32-|", view: numberView, numberLabel)
        addConstraintsWithFormat(format: "V:|-72-[v0(50)]-72-|", view: numberLabel)

        addConstraintsWithFormat(format: "V:|-72-[v0(50)]-72-|", view: numberView)

        addConstraintsWithFormat(format: "H:|-62-[v0(30)]-8-[v1]-32-|", view: birthdayImageView, birthdayLabel)
        addConstraintsWithFormat(format: "V:|-126-[v0(50)]-126-|", view: birthdayLabel)

        addConstraintsWithFormat(format: "V:|-126-[v0(50)]-126-|", view: birthdayImageView)

        addConstraintsWithFormat(format: "H:|-62-[v0(30)]-8-[v1]-32-|", view: emailImageView, emailLabel)
        addConstraintsWithFormat(format: "V:|-182-[v0(50)]-182-|", view: emailLabel)

        addConstraintsWithFormat(format: "V:|-182-[v0(50)]-182-|", view: emailImageView)

        addConstraints([NSLayoutConstraint(item: numberView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])


    }
}


