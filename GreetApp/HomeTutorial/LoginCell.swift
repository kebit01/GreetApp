//
//  LoginCell.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.//

import UIKit

class Status: NSObject {
    let headerText2: String
    
    init(headerText2: String) {
        self.headerText2 = headerText2
    }
}

enum Statusname: String {
    case Login
    case Register
}

class LoginCell: UICollectionViewCell {
    
    var stat = Statusname.Login

 let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "cheesecake.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.backgroundColor = .red
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var loginRegisterSegmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Login", "Register"])
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.tintColor = UIColor.white
        sc.selectedSegmentIndex = 1
        sc.addTarget(self, action: #selector(handleLoginRegisterChange), for: .valueChanged)
        return sc
    }()
    
    @objc func handleLoginRegisterChange() {
        let title = loginRegisterSegmentedControl.titleForSegment(at: loginRegisterSegmentedControl.selectedSegmentIndex)
        loginRegisterButton.setTitle(title, for: .normal)
        
        inputsContainerViewHeight?.constant = loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 100 : 150
        
        nameTextFieldHeight?.isActive = false
        nameTextFieldHeight = nameTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 0 : 1/3)
        nameTextFieldHeight?.isActive = true
        
        emailTextFieldHeight?.isActive = false
        emailTextFieldHeight = emailTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 1/2 : 1/3)
        emailTextFieldHeight?.isActive = true
        
        passwordTextFieldHeight?.isActive = false
        passwordTextFieldHeight = passwordTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 1/2 : 1/3)
        passwordTextFieldHeight?.isActive = true
    }
    
    /*white container for register/login information*/
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor=UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        button.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        return button
    }()
    
   func loginAction(status: Statusname) {
//               @objc fileprivate func loginAction(_ sender: UIButton) {
                
                // else if statement
                
//                   print("hello login, this is my login button being pressed")
                
                switch status {
                case .Register:
                    print("hello login, this is my login button being pressed")
                case .Login:
                    print("hello login, this is my login button being pressed")
                }

//                               let viewController = DemoViewController()
//                               self.present(viewController, animated:true, completion:nil)

//                   let demoViewController = DemoViewController(collectionViewLayout: UICollectionViewFlowLayout())
//                   self.present(demoViewController, animated:true, completion:nil)
//                           viewControllers = [demoViewController]

//                                   let layout = UICollectionViewFlowLayout()
//                                        layout.scrollDirection = .horizontal
//                                   let swipingController = SwipingController(collectionViewLayout: layout)
//                           //           self.navigationController?.popToViewController(navDemoController, animated: true)
//                                   self.navigationController?.pushViewController(swipingController, animated: true)
//


               }
    
//    let registerButton: UIButton = {
//        let button = UIButton(type: .system)
//        /*button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)*/
//        button.setTitle("Register", for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitleColor(UIColor.red, for: .normal)
//        /*button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 8)*/
//        return button
//    }()
    
    let nameTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let nameSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let emailSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        return textField
    }()

        override init(frame: CGRect) {
            super.init(frame: frame)

        // Do any additional setup after loading the view.
        backgroundColor=UIColor(red: 134/255, green: 157/255, blue: 49/255, alpha: 1)
        addSubview(logoImageView)
        addSubview(inputsContainerView)
        addSubview(loginRegisterButton)
//       addSubview(registerButton)
        addSubview(loginRegisterSegmentedControl)
        
        
        setupInputsContainerView()
        setuploginRegisterButton()
//        setupRegisterButton()
        setuplogoImageView()
        setupLoginRegisterSegmentedControl()
    }
    
    var inputsContainerViewHeight: NSLayoutConstraint?
    
    var nameTextFieldHeight: NSLayoutConstraint?
    var emailTextFieldHeight: NSLayoutConstraint?
    var passwordTextFieldHeight: NSLayoutConstraint?
    
    /*function to set the position and dimensions of the white container for register/login*/
    func setupInputsContainerView() {
        inputsContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: widthAnchor, constant: -24).isActive = true
        inputsContainerViewHeight = inputsContainerView.heightAnchor.constraint(equalToConstant: 150)
        inputsContainerViewHeight?.isActive = true
        
        inputsContainerView.addSubview(nameTextField)
        inputsContainerView.addSubview(nameSeparatorView)
        inputsContainerView.addSubview(emailTextField)
        inputsContainerView.addSubview(emailSeparatorView)
        inputsContainerView.addSubview(passwordTextField)
        
        nameTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameTextFieldHeight = nameTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3)
        nameTextFieldHeight?.isActive = true
        
        nameSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameSeparatorView.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailTextFieldHeight = emailTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor)
        emailTextFieldHeight?.isActive = true
        
        emailSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailSeparatorView.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        passwordTextFieldHeight = passwordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor)
        passwordTextFieldHeight?.isActive = true
        
    }
    
    func setupLoginRegisterSegmentedControl() {
        loginRegisterSegmentedControl.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        loginRegisterSegmentedControl.bottomAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: -12).isActive = true
        loginRegisterSegmentedControl.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        loginRegisterSegmentedControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setuploginRegisterButton() {
        loginRegisterButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
//    func setupRegisterButton() {
//        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        registerButton.topAnchor.constraint(equalTo: loginRegisterButton.bottomAnchor, constant: 12).isActive = true
//        registerButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
//        registerButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
//    }
    
    func setuplogoImageView() {
        logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        logoImageView.bottomAnchor.constraint(equalTo: loginRegisterSegmentedControl.topAnchor, constant: -12).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    
        }
}

