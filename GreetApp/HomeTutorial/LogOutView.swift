//
//  LogOutView.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

//import UIKit
////import FirebaseAuth
////import StoreKit
//
//class LogOutView: UIViewController{
//
//    let step1ImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "take-care")
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFit
//        return imageView
//    }()
//
//    let descriptionTextView: UITextView = {
//        let textView = UITextView()
//
//        //        let attributedText = NSMutableAttributedString(string: "Take a chance to have everything you wished for!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
//        let attributedText = NSMutableAttributedString(string: "Thank you, for joining!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
//
//        attributedText.append(NSAttributedString(string: "\n\n\nYou have been logged out, please rate our App. \n\n\nTo Log back in, tap Log in.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.black]))
//
//        textView.attributedText = attributedText
//
//        //        textView.text = "take a chance to have everything you wished for!"
//        //        textView.font = UIFont.boldSystemFont(ofSize: 18)
//        textView.translatesAutoresizingMaskIntoConstraints = false
//        textView.textAlignment = .center
//        textView.isEditable = false
//        textView.isScrollEnabled = false
//        textView.backgroundColor = .soothingPurple
//        return textView
//    }()
//
//    private let reLoginButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .systemGreen
//        button.setTitleColor(.black, for: .normal)
//        button.setTitle("Log in", for: .normal)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print("it went into LogOut ViewDidLoad")
//
//        logAuthenticateUserAndConfigureView()
//        setupLayout()
//
//    }
//
//    func logAuthenticateUserAndConfigureView() {
//
//        print("only goes here if i am logged off")
//
//        //code that allows users to do rating
//        if #available(iOS 10.3, *) {
//            let deadline = DispatchTime.now() + .seconds(2)
//            DispatchQueue.main.asyncAfter(deadline: deadline) { [weak self] in
//                SKStoreReviewController.requestReview()
//            } } else {
//            // Request review from a manual method here
//        }
//
//        //        this codes hides the navigation
//        navigationController?.hideNavigationItemBackground()
//
//        //        UINavigationBar.appearance().barTintColor = .red
//        UINavigationBar.appearance().isTranslucent = true
//
//        //this is the background of the view
//        view.backgroundColor = .soothingPurple
//
//    }
//
//    private func setupLayout() {
//        let topImageContainerView = UIView()
//
////        topImageContainerView.backgroundColor = .blue
//        topImageContainerView.backgroundColor = .soothingPurple
//
//        view.addSubview(topImageContainerView)
//
//        //        enable auto layout
//        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
//
//        topImageContainerView.addSubview(step1ImageView)
//
//        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//
//        step1ImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
//        step1ImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
//        step1ImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
//
//        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
//
//        view.addSubview(descriptionTextView)
//        view.addSubview(reLoginButton)
//
//        reLoginButton.addTarget(self, action: #selector(reLoginTapped), for: .touchUpInside)
//
//        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
//        descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
//        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
//        descriptionTextView.bottomAnchor.constraint(equalTo: reLoginButton.topAnchor).isActive = true
//
//        reLoginButton.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor).isActive = true
//        reLoginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
//        reLoginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
//        reLoginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
//        reLoginButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
//
//    }
//
//    @objc private func reLoginTapped() {
//
//        // function that allows button extension pulse
//        reLoginButton.pulse()
//
//        let LgV2 = LogRegisterView2()
//        //                            self.present(signOutView, animated: true, completion: nil)
//        self.navigationController?.pushViewController(LgV2, animated: true)
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
//
//        print("continueButtonIsTapped")
//
//    }
//
//}
