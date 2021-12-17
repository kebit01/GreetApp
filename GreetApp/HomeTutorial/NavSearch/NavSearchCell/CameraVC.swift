//
//  CameraVC.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

//import UIKit
//
//class CameraVC: UIViewController {
//    
//    private let cameraImageView: UIImageView = {
//        let mIv = UIImageView()
//        mIv.backgroundColor = .secondarySystemBackground
//        mIv.backgroundColor = .lightGray
//        //              mIv.image = UIImage(named: "Tacos1" )
//        //        mIv.layer.cornerRadius = 22
//        mIv.layer.masksToBounds = true
//        mIv.clipsToBounds = true
//        mIv.contentMode = .scaleAspectFit
//        mIv.translatesAutoresizingMaskIntoConstraints = false
//        return mIv
//    }()
//    
//    private let cancelButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .red
//        button.setTitleColor(.white, for: .normal)
//        button.setTitle("Cancel", for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    private let imageButton: UIButton = {
//        let ibutton = UIButton()
//        ibutton.backgroundColor = .blue
//        ibutton.setTitleColor(.white, for: .normal)
//        ibutton.setTitle("Take Photo", for: .normal)
//        ibutton.translatesAutoresizingMaskIntoConstraints = false
//        return ibutton
//    }()
//    
////    private let clearButton: UIButton = {
////         let rtbutton = UIButton()
////         rtbutton.backgroundColor = .purple
////         rtbutton.setTitleColor(.white, for: .normal)
////         rtbutton.setTitle("Clear Image", for: .normal)
////         rtbutton.translatesAutoresizingMaskIntoConstraints = false
////         return rtbutton
////     }()
////
////    private let resetButton: UIButton = {
////        let rsbutton = UIButton()
////        rsbutton.backgroundColor = .orange
////        rsbutton.setTitleColor(.white, for: .normal)
////        rsbutton.setTitle("Reset", for: .normal)
////        rsbutton.translatesAutoresizingMaskIntoConstraints = false
////        return rsbutton
////    }()
////
////    private let rotateButton: UIButton = {
////        let rtbutton = UIButton()
////        rtbutton.backgroundColor = .green
////        rtbutton.setTitleColor(.white, for: .normal)
////        rtbutton.setTitle("Rotate", for: .normal)
////        rtbutton.translatesAutoresizingMaskIntoConstraints = false
////        return rtbutton
////    }()
//    
//    private let captionImage: UITextField = {
//        let cI = UITextField()
//        //emailField.placeholder = "Email Address"
//        cI.attributedPlaceholder = NSAttributedString (string: "Phone number", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        cI.layer.borderWidth = 1
//        cI.layer.borderColor = UIColor.black.cgColor
//        cI.backgroundColor = .white
//        cI.autocapitalizationType = .none
//        cI.leftViewMode = .always
//        cI.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        cI.textColor = .black
//        cI.returnKeyType = UIReturnKeyType.done
//        cI.clearButtonMode = .whileEditing
//        return cI
//    }()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //        navigationController?.setNavigationBarHidden(true, animated: false)
//        tabBarController?.tabBar.isHidden = true
//        //        tabBarController?.hidesBottomBarWhenPushed = true
//        
//        view.backgroundColor = .systemTeal
//        
//        view.addSubview(imageButton)
//        view.addSubview(cancelButton)
////        //        view.addSubview(cameraImageView)
////        view.addSubview(clearButton)
////        view.addSubview(resetButton)
////        view.addSubview(rotateButton)
//        
//        imageButton.addTarget(self, action: #selector(imageTapButton), for: .touchUpInside)
//        cancelButton.addTarget(self, action: #selector(cancelTapButton), for: .touchUpInside)
////        clearButton.addTarget(self, action: #selector(clearTapButton), for: .touchUpInside)
////        resetButton.addTarget(self, action: #selector(resetTapButton), for: .touchUpInside)
////        rotateButton.addTarget(self, action: #selector(rotateTapButton), for: .touchUpInside)
////
////        clearButton.isHidden = true
////        resetButton.isHidden = true
////        rotateButton.isHidden = true
//                
//            view.addSubview(cameraImageView)
//                
//            cameraImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//            cameraImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//            cameraImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//            cameraImageView.heightAnchor.constraint(equalToConstant: 260).isActive = true
//                
//        setUpMiddleControls()
//        setupBottomControls()
//        
//    }
//    
//    @objc func imageTapButton() {
//        
//        print("image button tapped")
//        let picker = UIImagePickerController()
//        //        picker.sourceType = .camera
//        picker.sourceType = .photoLibrary
//        picker.delegate = self
//        picker.allowsEditing = true
//        present(picker, animated: true)
//        
//    }
//    
//    @objc func clearTapButton() {
//        
//        showAlert()
//    
//    }
//    
//    func showAlert() {
//        
//            print("thisIsAlert")
//            //        tabBarController?.tabBar.isHidden = false
//            
//        let alert = UIAlertController(title: "Please be Advised!" , message: "when tapping Clear Image, your image will be deleted.", preferredStyle: .alert)
//            
////            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
////                print("this is my cancel ButtonAction1")
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//                  print("this is my cancel ButtonAction1")
//                
//            })
//            
////            let defaultbutton = UIAlertAction(title: "Discard", style: .destructive) { (action) in
////                print("this is my return button")
//            alert.addAction(UIAlertAction(title: "Clear", style: .destructive) { (action) in
//                      print("this is my return button")
//                
//                self.goBackToTakePhoto()
//                
//            })
//            
////            sheet.addAction(defaultbutton)
////            sheet.addAction(cancelButton)
//            present(alert, animated: true, completion: nil)
//
//    }
//    
//    func goBackToTakePhoto() {
//        
//        print("clear Image Button Is Pressed")
//         
//         //this code allows no image to be displayed
//         cameraImageView.image = .none
//         
//         //return back to original
//         cameraImageView.transform = CGAffineTransform.identity
//         
//         //        navigationController?.setNavigationBarHidden(true, animated: false)
//         tabBarController?.tabBar.isHidden = true
//         //        tabBarController?.hidesBottomBarWhenPushed = true
//         
//         returnTestImage()
//        
//    }
//    
////    @objc func resetTapButton() {
////
////        print("reset Button Is Pressed")
////
////        imageIsTaken()
////
////        //return back to original
////        cameraImageView.transform = CGAffineTransform.identity
////
////    }
//    
////    @objc func rotateTapButton() {
////
////        print("rotate Button Is Pressed")
////
//////        imageIsEdited()
////
////        if cameraImageView.transform == CGAffineTransform.identity {
////
////            UIView.animate(withDuration: 1.0, animations: ({ self.cameraImageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
////            }))
////
////        } else if cameraImageView.transform == CGAffineTransform(rotationAngle: CGFloat.pi / 2) {
////
////            UIView.animate(withDuration: 1.0, animations: ({ self.cameraImageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
////            }))
////
////        } else if cameraImageView.transform == CGAffineTransform(rotationAngle: CGFloat.pi) {
////
////            UIView.animate(withDuration: 1.0, animations: ({ self.cameraImageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi + CGFloat.pi / 2)
////            }))
////
////        } else if cameraImageView.transform == CGAffineTransform(rotationAngle: CGFloat.pi + CGFloat.pi / 2) {
////
////            UIView.animate(withDuration: 1.0, animations: ({ self.cameraImageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
////            }))
////
////        } else if cameraImageView.transform == CGAffineTransform(rotationAngle: CGFloat.pi * 2) {
////
////            UIView.animate(withDuration: 1.0, animations: ({ self.cameraImageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
////            }))
////
////        }
////
////    }
//    
//    @objc func cancelTapButton() {
//        
//        print("Cancel button is pressed")
//        
//        tabBarController?.tabBar.isHidden = false
//        cancelButton.isHidden = true
//        imageButton.isHidden = true
//  
//        cameraImageView.image = .none
//        
//        cancelButtonPressed()
//        
//        //        self.navigationController?.popViewController(animated: true)
//    }
//    
//    fileprivate func setUpMiddleControls() {
//        
//        navigationItem.title = "Take Photo"
//        
//        let bottomControlsStackView = UIStackView(arrangedSubviews: [cancelButton, imageButton])
////        let bottomControlsStackView2 = UIStackView(arrangedSubviews: [clearButton, resetButton, rotateButton])
//        
//        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
//        bottomControlsStackView.distribution = .fillEqually
//        
////        bottomControlsStackView2.translatesAutoresizingMaskIntoConstraints = false
////        bottomControlsStackView2.distribution = .fillEqually
//        
//        view.addSubview(bottomControlsStackView)
////        view.addSubview(bottomControlsStackView2)
//        
//        bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50).isActive =  true
//        bottomControlsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        bottomControlsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        bottomControlsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        bottomControlsStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        
////        bottomControlsStackView2.heightAnchor.constraint(equalToConstant: 50).isActive =  true
////        bottomControlsStackView2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
////        bottomControlsStackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
////        bottomControlsStackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
////        bottomControlsStackView2.bottomAnchor.constraint(equalTo: bottomControlsStackView.topAnchor).isActive = true
//        
//    }
//
//    fileprivate func setupBottomControls() {
//        
//        let bottomImageContainerView = UIView()
//        
//        bottomImageContainerView.backgroundColor = .cyan
//        //        bottomImageContainerView.backgroundColor = .secondarySystemBackground
//        
//        view.addSubview(bottomImageContainerView)
//        bottomImageContainerView.translatesAutoresizingMaskIntoConstraints = false
//        
//        bottomImageContainerView.heightAnchor.constraint(equalToConstant: 80).isActive =  true
//        bottomImageContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        bottomImageContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 80).isActive = true
//        bottomImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        bottomImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        
//    }
//
//fileprivate func cancelButtonPressed() {
//    
//    navigationItem.title = "Camera"
//    
//    let testButton = UIImage(named: "add-camera")?.withRenderingMode(.alwaysOriginal)
//    let testBarButtonItem = UIBarButtonItem(image: testButton, style: .plain, target: self, action: #selector(handleReturnCamera))
//    //        use if its only one bar button
//    navigationItem.rightBarButtonItem = testBarButtonItem
//    
//}
//
//// this is the function for the rightNavBarButton
//@objc func handleReturnCamera() {
//    
//    print("handleReturnCamera")
//    
//    tabBarController?.tabBar.isHidden = true
//    cancelButton.isHidden = false
//    imageButton.isHidden = false
//    
//    navigationItem.title = "Take Photo"
//    //takes away rightBarButton
//    navigationItem.rightBarButtonItem = .none
//    
//}
//
//fileprivate func imageIsTaken() {
//
////    let orderButton = UIImage(named: "left")?.withRenderingMode(.alwaysOriginal)
////    let orderBarButtonItem = UIBarButtonItem(image: orderButton, style: .plain, target: self, action: #selector(handleOrder))
////    //        use if its only one bar button
////    navigationItem.leftBarButtonItem = orderBarButtonItem
////
////    navigationItem.title = "Edit"
//
//    //        "in-progress"
//    let testButton = UIImage(named: "spinner1")?.withRenderingMode(.alwaysOriginal)
//    let testBarButtonItem = UIBarButtonItem(image: testButton, style: .plain, target: self, action: #selector(handleTest))
//    //        use if its only one bar button
//    navigationItem.rightBarButtonItem = testBarButtonItem
//    //
//    //                //code if you want two navButtons on navBar
//    //                self.navigationItem.rightBarButtonItems = [orderBarButtonItem, testBarButtonItem]
//
//}
//
//// this is the function for the rightNavBarButton
//@objc func handleTest() {
//
//    print("handleTestCamera")
//
//    //                if you are presenting a regularUIView
//    let viewController = UploadPhotoController3()
//    navigationController?.pushViewControllerFromRight(controller: viewController)
//
////        //if you are presenting a collectionView
////        let layout = UICollectionViewFlowLayout()
////               let viewController = PushedViewController2(collectionViewLayout: layout)
////            navigationController?.pushViewControllerFromRight(controller: viewController)
//
//            //this allows data to transfer from one VC to another VC
//        viewController.transferImage = cameraImageView.image!
//
//    }
//
//// this is the function for the leftNavBarButton
//@objc func handleOrder() {
//    
//    print("handleOrderback")
//    //        tabBarController?.tabBar.isHidden = false
//    
//    let sheet = UIAlertController(title: .none , message: "If you go back, your image will be deleted.", preferredStyle: .actionSheet)
//    
//    let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//        print("this is my cancel ButtonAction1")
//        
//    }
//    
//    let defaultbutton = UIAlertAction(title: "Discard", style: .destructive) { (action) in
//        print("this is my return button")
//        
//        self.returnTestImage()
//        
//    }
//    
//    sheet.addAction(defaultbutton)
//    sheet.addAction(cancelButton)
//    present(sheet, animated: true, completion: nil)
//    
//}
//
//@objc private func returnTestImage() {
//    
//    print("returning")
//    
//    cameraImageView.image = .none
//    //        cameraImageView.transform = CGAffineTransform.identity
//    //            navigationController?.popViewController(animated: true)
//    imageButton.isHidden = false
//    cancelButton.isHidden = false
////    clearButton.isHidden = true
////    resetButton.isHidden = true
////    rotateButton.isHidden = true
//    
//    //tabBar isHidden
//    tabBarController?.tabBar.isHidden = true
//    
//    navigationItem.leftBarButtonItem = .none
//    navigationItem.rightBarButtonItem = .none
//    
//    navigationItem.title = "Take Photo"
//    
//}
//    
////fileprivate func imageIsEdited() {
////
////    let orderButton = UIImage(named: "left")?.withRenderingMode(.alwaysOriginal)
////    let orderBarButtonItem = UIBarButtonItem(image: orderButton, style: .plain, target: self, action: #selector(handleOrder2))
////    //        use if its only one bar button
////    navigationItem.leftBarButtonItem = orderBarButtonItem
////
////    navigationItem.title = "New Post"
////
////    //        "in-progress"
////    let testButton = UIImage(named: "spinner")?.withRenderingMode(.alwaysOriginal)
////    let testBarButtonItem = UIBarButtonItem(image: testButton, style: .plain, target: self, action: #selector(handleTest2))
////    //        use if its only one bar button
////    navigationItem.rightBarButtonItem = testBarButtonItem
////    //
////    //                //code if you want two navButtons on navBar
////    //                self.navigationItem.rightBarButtonItems = [orderBarButtonItem, testBarButtonItem]
////
////}
//
////// this is the function for the rightNavBarButton
////@objc func handleTest2() {
////
////    print("handleTestCamera2")
////
//////                if you are presenting a regularUIView
////    let viewController = UploadPhotoController3()
////               navigationController?.pushViewControllerFromRight(controller: viewController)
////
//////    //if you are presenting a collectionView
//////    let layout = UICollectionViewFlowLayout()
//////           let viewController = PushedViewController2(collectionViewLayout: layout)
//////        navigationController?.pushViewControllerFromRight(controller: viewController)
////
////        //this allows data to transfer from one VC to another VC
////    viewController.transferImage = cameraImageView.image!
////
////}
//
//// this is the function for the leftNavBarButton
//@objc func handleOrder2() {
//    
//    print("handleOrderback")
//    //        tabBarController?.tabBar.isHidden = false
//    
//    let sheet = UIAlertController(title: .none , message: "If you go back, your image will be deleted.", preferredStyle: .actionSheet)
//    
//    let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//        print("this is my cancel ButtonAction1")
//        
//    }
//    
//    let defaultbutton = UIAlertAction(title: "Discard", style: .destructive) { (action) in
//        print("this is my return button")
//        
//        self.returnTestImage2()
//        
//    }
//    
//    sheet.addAction(defaultbutton)
//    sheet.addAction(cancelButton)
//    present(sheet, animated: true, completion: nil)
//    
//}
//
//@objc private func returnTestImage2() {
//    
//    print("returning2")
//    
//    cameraImageView.image = .none
//    //return back to original
//    cameraImageView.transform = CGAffineTransform.identity
//    //            navigationController?.popViewController(animated: true)
//    imageButton.isHidden = false
//    cancelButton.isHidden = false
////    clearButton.isHidden = true
////    resetButton.isHidden = true
////    rotateButton.isHidden = true
//    
//    //tabBar isHidden
//   tabBarController?.tabBar.isHidden = true
//    
//    navigationItem.leftBarButtonItem = .none
//    navigationItem.rightBarButtonItem = .none
//    
//    navigationItem.title = "Take Photo"
//    
//    }
//
//}
//
//extension CameraVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//    
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        picker.dismiss(animated: true, completion: nil)
//    }
//    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        
//        picker.dismiss(animated: true, completion: nil)
//        
//        guard let firstImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {
//            return
//        }
//        
//        cameraImageView.image = firstImage
////        cameraImageView.image = firstImage
////        clearButton.isHidden = false
////        resetButton.isHidden = false
////        rotateButton.isHidden = false
//        
//        //displaysNavIconsWhenImageIsTaken
//        imageIsTaken()
//        
////        imageButton.isHidden = true
////        cancelButton.isHidden = true
//        
//    }
//}
//
