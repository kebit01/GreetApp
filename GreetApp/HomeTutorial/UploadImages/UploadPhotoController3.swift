//
//  UploadPhotoController3.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

////import LBTATools
//import Foundation
////import FirebaseDatabase
//
//private let iImageView: UIImageView = {
//    let iIv = UIImageView()
//    iIv.backgroundColor = UIColor.red
//    //    iIv.image = UIImage(named: "add-user" )
//    iIv.layer.cornerRadius = 22
//    iIv.layer.masksToBounds = true
//    iIv.contentMode = .scaleAspectFit
//    iIv.translatesAutoresizingMaskIntoConstraints = false
//    iIv.clipsToBounds = true
//    iIv.isUserInteractionEnabled = true
//    return iIv
//}()
//
//// Took this off to allow pageController Image Array to work properly need this for Add image button
//let iImageView2: UIImageView = {
//    let iImageView2 = UIImageView()
//    iImageView2.backgroundColor = UIColor.purple
//    //              iImageView2.image = UIImage(named: "Tacos1" )
//    iImageView2.layer.cornerRadius = 22
//    iImageView2.layer.masksToBounds = true
//    iImageView2.contentMode = .scaleAspectFill
//    iImageView2.translatesAutoresizingMaskIntoConstraints = false
//    iImageView2.constrainHeight(260)
//    return iImageView2
//}()
//
//class UploadPhotoController3: LBTAFormController, UITextFieldDelegate, UITextViewDelegate {
//    
//    // this is label Array for Textfield
//    let UploadTfLabels = ["Product Name:", "Price:", "Description:", "Category:", "Length: (CM)", "Width: (CM)", "Hieght: (CM)"]
//    
//    lazy var addButton: UIButton = {
//        let abutton = UIButton(type: .system)
//        abutton.setTitle("Add Image", for: .normal)
//        abutton.translatesAutoresizingMaskIntoConstraints = false
//        abutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        //        abutton.backgroundColor = .cyan
//        abutton.setTitleColor(.blue, for: .normal)
//        abutton.addTarget(self, action: #selector(handleAdd), for: .touchUpInside)
//        return abutton
//    }()
//    
//    @objc private func handleAdd() {
//        print("This is my handleAdd Button")
//        
//        addButton.pulse()
//        
//        let picker = UIImagePickerController()
//        //        picker.sourceType = .camera
//        picker.sourceType = .photoLibrary
//        picker.delegate = self
//        picker.allowsEditing = true
//        present(picker, animated: true)
//        
//    }
//    
//    lazy var changeButton: UIButton = {
//        let cbutton = UIButton(type: .system)
//        cbutton.setTitle("Return Image", for: .normal)
//        //states of button normal others like highlighted, disabled, selected
//        cbutton.translatesAutoresizingMaskIntoConstraints = false
//        cbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        //        cbutton.backgroundColor = .cyan
//        //        let pinkColor = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
//        cbutton.setTitleColor(.red, for: .normal)
//        cbutton.addTarget(self, action: #selector(handleChange), for: .touchUpInside)
//        return cbutton
//    }()
//    
//    @objc private func handleChange() {
//        print("Trying to advance to handleChange")
//        
//        changeButton.pulse()
//        
//        iImageView2.image = transferImage
//        
//    }
//    
//    private let productTf: UITextField = {
//        let pNtf = UITextField()
//        //pNtf.placeholder = "Email Address"
//        pNtf.attributedPlaceholder = NSAttributedString (string: "Product Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        pNtf.layer.borderWidth = 1
//        pNtf.layer.borderColor = UIColor.black.cgColor
//        pNtf.backgroundColor = .white
//        pNtf.leftViewMode = .always
//        pNtf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        pNtf.textColor = .black
//        pNtf.returnKeyType = UIReturnKeyType.next
//        pNtf.autocapitalizationType = .sentences
//        pNtf.clearButtonMode = .whileEditing
//        return pNtf
//    }()
//    
//    private let productError: UILabel = {
//        let pNelabel = UILabel()
//        pNelabel.textAlignment = .left
//        pNelabel.text = "Missing"
//        //        pNelabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        pNelabel.textColor = .red
//        //        pNelabel.backgroundColor = .red
//        return pNelabel
//    }()
//    
//    private let productMax: UILabel = {
//        let dNlabel = UILabel()
//        dNlabel.textAlignment = .left
//        dNlabel.text = "Max"
//        dNlabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        //        dNlabel.backgroundColor = .red
//        return dNlabel
//    }()
//    
//    private let priceTf: UITextField = {
//        let ptf = UITextField()
//        //ptf.placeholder = "Email Address"
//        ptf.attributedPlaceholder = NSAttributedString (string: "Price", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        ptf.layer.borderWidth = 1
//        ptf.layer.borderColor = UIColor.black.cgColor
//        ptf.backgroundColor = .white
//        ptf.autocapitalizationType = .none
//        ptf.leftViewMode = .always
//        ptf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        ptf.textColor = .black
//        ptf.returnKeyType = UIReturnKeyType.next
//        ptf.clearButtonMode = .whileEditing
//        return ptf
//    }()
//    
//    private let priceError: UILabel = {
//        let pElabel = UILabel()
//        pElabel.textAlignment = .left
//        pElabel.text = "Missing"
//        //        pElabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        pElabel.textColor = .red
//        //        pElabel.backgroundColor = .red
//        return pElabel
//    }()
//    
//    private let priceMax: UILabel = {
//        let pNlabel = UILabel()
//        pNlabel.textAlignment = .left
//        pNlabel.text = "Max"
//        pNlabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        //        pNlabel.backgroundColor = .red
//        return pNlabel
//    }()
//    
//    private let proStatus: UILabel = {
//        let plabel = UILabel()
//        plabel.textAlignment = .center
//        plabel.text = "New:"
//        plabel.font = .systemFont(ofSize: 17)
////        plabel.backgroundColor = .red
//        return plabel
//    }()
//    
//    private let statusTf: UITextField = {
//        let sTf = UITextField()
//        sTf.attributedPlaceholder = NSAttributedString (string: "Status", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        sTf.layer.borderWidth = 1
//        sTf.layer.borderColor = UIColor.black.cgColor
//        sTf.backgroundColor = .white
//        sTf.textAlignment = .center
//        return sTf
//    }()
//    
//    let status = ["Yes", "No"]
//    
//    var statusPickerView = UIPickerView()
//    
//    private let descriptionTf: UITextView = {
//        let dTf = UITextView()
//        //        dTf.placeholder = "Email Address"
//        //        dTf.attributedPlaceholder = NSAttributedString (string: "Description", attributes: [NSAttributedString.Key.foregroundColor:UIColor.lightGray])
//        dTf.text = "Enter Description"
//        dTf.textColor = .lightGray
//        dTf.font = UIFont(name: "verdana", size: 18)
//        dTf.layer.borderWidth = 1
//        dTf.layer.borderColor = UIColor.black.cgColor
//        dTf.backgroundColor = .white
//        dTf.autocapitalizationType = .sentences
//        dTf.autocorrectionType = UITextAutocorrectionType.yes
//        dTf.spellCheckingType = UITextSpellCheckingType.yes
//        dTf.returnKeyType = UIReturnKeyType.next
//        return dTf
//    }()
//    
//    private let descMax: UILabel = {
//        let dNlabel = UILabel()
//        dNlabel.textAlignment = .left
//        dNlabel.text = "Max"
//        dNlabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        //        dNlabel.backgroundColor = .red
//        return dNlabel
//    }()
//    
//    private let categoryTf: UITextField = {
//        let cTf = UITextField()
//        //cTf.placeholder = "Email Address"
//        cTf.attributedPlaceholder = NSAttributedString (string: "Category", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        cTf.layer.borderWidth = 1
//        cTf.layer.borderColor = UIColor.black.cgColor
//        cTf.backgroundColor = .white
//        cTf.autocapitalizationType = .sentences
//        cTf.leftViewMode = .always
//        cTf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        cTf.textColor = .black
//        cTf.returnKeyType = UIReturnKeyType.next
//        cTf.clearButtonMode = .whileEditing
//        return cTf
//    }()
//    
//    private let categoryError: UILabel = {
//        let cElabel = UILabel()
//        cElabel.textAlignment = .left
//        cElabel.text = "Missing"
//        //        cElabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        cElabel.textColor = .red
//        //        cElabel.backgroundColor = .red
//        return cElabel
//    }()
//    
//    private let categoryMax: UILabel = {
//        let cNlabel = UILabel()
//        cNlabel.textAlignment = .left
//        cNlabel.text = "Max"
//        cNlabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        //        cNlabel.backgroundColor = .red
//        return cNlabel
//    }()
//    
//    private let lengthTf: UITextField = {
//        let lTf = UITextField()
//        //lTf.placeholder = "Email Address"
//        lTf.attributedPlaceholder = NSAttributedString (string: "Length", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        lTf.layer.borderWidth = 1
//        lTf.layer.borderColor = UIColor.black.cgColor
//        lTf.backgroundColor = .white
//        lTf.autocapitalizationType = .none
//        lTf.leftViewMode = .always
//        lTf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        lTf.textColor = .black
//        lTf.returnKeyType = UIReturnKeyType.next
//        lTf.clearButtonMode = .whileEditing
//        return lTf
//    }()
//    
//    private let lengthError: UILabel = {
//        let lElabel = UILabel()
//        lElabel.textAlignment = .left
//        lElabel.text = "Missing"
//        //        lElabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        lElabel.textColor = .red
//        //        lElabel.backgroundColor = .red
//        return lElabel
//    }()
//    
//    private let lengthMax: UILabel = {
//        let lNlabel = UILabel()
//        lNlabel.textAlignment = .left
//        lNlabel.text = "Max"
//        lNlabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        //        lNlabel.backgroundColor = .red
//        return lNlabel
//    }()
//    
//    private let widthTf: UITextField = {
//        let wTf = UITextField()
//        //wTf.placeholder = "Email Address"
//        wTf.attributedPlaceholder = NSAttributedString (string: "Width", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        wTf.layer.borderWidth = 1
//        wTf.layer.borderColor = UIColor.black.cgColor
//        wTf.backgroundColor = .white
//        wTf.autocapitalizationType = .none
//        wTf.leftViewMode = .always
//        wTf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        wTf.textColor = .black
//        wTf.returnKeyType = UIReturnKeyType.next
//        wTf.clearButtonMode = .whileEditing
//        return wTf
//    }()
//    
//    private let widthError: UILabel = {
//        let wElabel = UILabel()
//        wElabel.textAlignment = .left
//        wElabel.text = "Missing"
//        //        wElabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        wElabel.textColor = .red
//        //        wElabel.backgroundColor = .red
//        return wElabel
//    }()
//    
//    private let widthMax: UILabel = {
//        let wNlabel = UILabel()
//        wNlabel.textAlignment = .left
//        wNlabel.text = "Max"
//        wNlabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        //        wNlabel.backgroundColor = .red
//        return wNlabel
//    }()
//    
//    private let heightTf: UITextField = {
//        let hTf = UITextField()
//        //hTf.placeholder = "Email Address"
//        hTf.attributedPlaceholder = NSAttributedString (string: "Height", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
//        hTf.layer.borderWidth = 1
//        hTf.layer.borderColor = UIColor.black.cgColor
//        hTf.backgroundColor = .white
//        hTf.autocapitalizationType = .none
//        hTf.leftViewMode = .always
//        hTf.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
//        hTf.textColor = .black
//        hTf.returnKeyType = UIReturnKeyType.done
//        hTf.clearButtonMode = .whileEditing
//        return hTf
//    }()
//    
//    private let heightError: UILabel = {
//        let hElabel = UILabel()
//        hElabel.textAlignment = .left
//        hElabel.text = "Missing"
//        //        hElabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        hElabel.textColor = .red
//        //        hElabel.backgroundColor = .red
//        return hElabel
//    }()
//    
//    private let heightMax: UILabel = {
//        let hNlabel = UILabel()
//        hNlabel.textAlignment = .left
//        hNlabel.text = "Max"
//        hNlabel.font = .systemFont(ofSize: 14, weight: .ultraLight)
//        //        hNlabel.backgroundColor = .red
//        return hNlabel
//    }()
//    
//    private let clearButton: UIButton = {
//        let clrbutton = UIButton()
//        //        clrbutton.backgroundColor = .systemGreen
//        clrbutton.setTitleColor(.black, for: .normal)
//        clrbutton.setTitle("Clear all Text", for: .normal)
//        clrbutton.addTarget(self, action: #selector(handleClear), for: .touchUpInside)
//        return clrbutton
//    }()
//    
//    let proceedLabel: UILabel = {
//        let plbl = UILabel()
//        plbl.text = "To continue please click checkmark above"
//        plbl.textColor = .black
//        plbl.textAlignment = .center
//        plbl.font = UIFont.systemFont(ofSize: 20)
//        plbl.backgroundColor = .green
//        //        navigationItem.titleView = titleLabel
//        plbl.translatesAutoresizingMaskIntoConstraints = false
//        return plbl
//    }()
//    
//    @objc func handleClear() {
//        
//        productTf.text = ""
//        priceTf.text = ""
//        descriptionTf.text = "Please Enter Description..."
//        descriptionTf.textColor = .red
//        categoryTf.text = ""
//        lengthTf.text = ""
//        widthTf.text = ""
//        heightTf.text = ""
//        
//        statusTf.text = nil
//        statusTf.textColor = nil
//        
//        productMax.text = "Max"
//        productMax.textColor = .black
//        priceMax.text = "Max"
//        priceMax.textColor = .black
//        descMax.text = "Max"
//        descMax.textColor = .black
//        categoryMax.text = "Max"
//        categoryMax.textColor = .black
//        lengthMax.text = "Max"
//        lengthMax.textColor = .black
//        widthMax.text = "Max"
//        widthMax.textColor = .black
//        heightMax.text = "Max"
//        heightMax.textColor = .black
//        
//        clearButton.isHidden = true
//        proceedLabel.isHidden = true
//        //takes away rightBarButton
//        navigationItem.rightBarButtonItem = .none
//        
//    }
//    
//    //property that allows transfer from VC to VC
//    var transferImage = UIImage()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //status selection
//        statusTf.inputView = statusPickerView
//        statusPickerView.delegate = self
//        statusPickerView.dataSource = self
//        
//        descriptionTf.delegate = self
//        
//        productTf.delegate = self
//        priceTf.delegate = self
//        categoryTf.delegate = self
//        lengthTf.delegate = self
//        widthTf.delegate = self
//        heightTf.delegate = self
//        
//        //allows image transferred to corrilate with image on VC
//        iImageView.image = transferImage
//        iImageView2.image = transferImage
//        
//        //allows tabBar to not be hidden
//        tabBarController?.tabBar.isHidden = true
//        
//        //hides backBarButton
//        navigationItem.hidesBackButton = true
//        
//        uploadNavBar()
//        setupViews()
//        setupBottomControls()
//        
//        //TOOK THIS OFF
//        observeKeyboardNotifications1()
//        
//        view.backgroundColor = .purple
//        
//        //        //always formContainerStackView to bounce/scroll and dismiss keyboard
//        //        scrollView.alwaysBounceVertical = true
//        scrollView.isScrollEnabled = false
//        
//        view.addSubview(productTf)
//        view.addSubview(productError)
//        view.addSubview(productMax)
//        view.addSubview(priceTf)
//        view.addSubview(priceError)
//        view.addSubview(priceMax)
//        view.addSubview(proStatus)
//        view.addSubview(statusTf)
//        view.addSubview(descriptionTf)
//        view.addSubview(descMax)
//        view.addSubview(categoryTf)
//        view.addSubview(categoryError)
//        view.addSubview(categoryMax)
//        view.addSubview(lengthTf)
//        view.addSubview(lengthError)
//        view.addSubview(lengthMax)
//        view.addSubview(widthTf)
//        view.addSubview(widthError)
//        view.addSubview(widthMax)
//        view.addSubview(heightTf)
//        view.addSubview(heightError)
//        view.addSubview(heightMax)
//        
//        //this code limits the amount of characters inputed into textFields.tag
//        productTf.tag = 1
//        priceTf.tag = 2
//        categoryTf.tag = 3
//        lengthTf.tag = 4
//        widthTf.tag = 5
//        heightTf.tag = 6
//        
//        //Hides clearButton & ErrorMsgs
//        productError.isHidden = true
//        priceError.isHidden = true
//        categoryError.isHidden = true
//        lengthError.isHidden = true
//        widthError.isHidden = true
//        heightError.isHidden = true
//        clearButton.isHidden = true
//        proceedLabel.isHidden = true
//        
//    }
//    
//    fileprivate func uploadNavBar() {
//        
//        let backButton = UIImage(named: "left")?.withRenderingMode(.alwaysOriginal)
//        let backBarButtonItem = UIBarButtonItem(image: backButton, style: .plain, target: self, action: #selector(handleBack))
//        //        use if its only one bar button
//        navigationItem.leftBarButtonItem = backBarButtonItem
//        
//        navigationItem.title = "Upload Info"
//        
//    }
//    
//    @objc func handleBack() {
//        
//        print("handleOrderback")
//        
//        let sheet = UIAlertController(title: .none , message: "If you go back, your image & information will be deleted.", preferredStyle: .actionSheet)
//        
//        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//            print("this is my cancel ButtonAction1")
//            
//        }
//        
//        let defaultbutton = UIAlertAction(title: "Go Back", style: .destructive) { (action) in
//            print("this is my return button")
//            
//            self.returnBack()
//            
//        }
//        
//        sheet.addAction(defaultbutton)
//        sheet.addAction(cancelButton)
//        present(sheet, animated: true, completion: nil)
//        
//    }
//    
//    func returnBack() {
//        
//        print("handleBack")
//        
//        navigationController?.popViewController(animated: true)
//        
//        //allows tabBar to be Hidden
//        tabBarController?.tabBar.isHidden = true
//        
//    }
//    
//    fileprivate func getOffKeyboard() {
//        
//        //        "in-progress"
//        let uploadButton = UIImage(named: "undelete")?.withRenderingMode(.alwaysOriginal)
//        let uploadBarButtonItem = UIBarButtonItem(image: uploadButton, style: .plain, target: self, action: #selector(handleOffKeyboard))
//        //        use if its only one bar button
//        navigationItem.rightBarButtonItem = uploadBarButtonItem
//        //
//        //                //code if you want two navButtons on navBar
//        //                self.navigationItem.rightBarButtonItems = [orderBarButtonItem, testBarButtonItem]
//        
//    }
//    
//    @objc func handleOffKeyboard() {
//        
//        keyboardDismiss1()
//        productTf.resignFirstResponder()
//        priceTf.resignFirstResponder()
//        categoryTf.resignFirstResponder()
//        lengthTf.resignFirstResponder()
//        widthTf.resignFirstResponder()
//        heightTf.resignFirstResponder()
//        descriptionTf.resignFirstResponder()
//        
//        navigationItem.rightBarButtonItem = .none
//        
//        clearButton.isHidden = false
//        
//    }
//    
//    fileprivate func uploadNavBar2() {
//        
//        //        "in-progress"
//        let uploadButton = UIImage(named: "in-progress")?.withRenderingMode(.alwaysOriginal)
//        let uploadBarButtonItem = UIBarButtonItem(image: uploadButton, style: .plain, target: self, action: #selector(handleUpload2))
//        //        use if its only one bar button
//        navigationItem.rightBarButtonItem = uploadBarButtonItem
//        //
//        //                //code if you want two navButtons on navBar
//        //                self.navigationItem.rightBarButtonItems = [orderBarButtonItem, testBarButtonItem]
//        
//    }
//    
//    @objc func handleUpload2() {
//        
//        print("handleUpload2")
//        
//        //MIGHT NOT NEED THIS IF TABBAR IS NOT HIDDEN
//        tabBarController?.tabBar.isHidden = false
//        
//        //        //                if you are presenting a regularUIView
//        //            let viewController = ProfileController1()
//        //        navigationController?.pushViewControllerFromRight(controller: viewController)
//                
//        //if you are presenting a collectionView
//        let layout = UICollectionViewFlowLayout()
//        let viewController = ProfileController2(collectionViewLayout: layout)
//        navigationController?.pushViewControllerFromRight(controller: viewController)
//        //        viewController.navigationItem.leftBarButtonItem = .none
//        //        viewController.navigationItem.rightBarButtonItem = .none
//        viewController.navImageIsUploaded2()
//        
//    }
//    
//    func setupViews() {
//        
//        formContainerStackView.axis = .vertical
//        formContainerStackView.spacing = 5
//        formContainerStackView.layoutMargins = .init(top: 5, left: 24, bottom: 0, right: 24)
//        
//        formContainerStackView.addArrangedSubview(iImageView2)
//        
//        let buttonControlsStackView = UIStackView(arrangedSubviews: [addButton, clearButton, changeButton])
//        buttonControlsStackView.constrainHeight(20)
//        buttonControlsStackView.distribution = .fillEqually
//        formContainerStackView.addArrangedSubview(buttonControlsStackView)
//        
//        for uploadTfLabels in UploadTfLabels {
//            
//            let tfLabel = UILabel(backgroundColor: .orange)
//            tfLabel.text = "\(uploadTfLabels)"
//            tfLabel.constrainHeight(50)
//            formContainerStackView.addArrangedSubview(tfLabel)
//            
//        }
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        
//        productTf.frame = CGRect(x: 145,
//                                 y: 300,
//                                 width: 180,
//                                 height: 40)
//        
//        productError.frame = CGRect(x: 330,
//                                    y: 300,
//                                    width: 180,
//                                    height: 40)
//        
//        productMax.frame = CGRect(x: 330,
//                                  y: 300,
//                                  width: 180,
//                                  height: 40)
//        
//        priceTf.frame = CGRect(x: 70,
//                               y: 355,
//                               width: 130,
//                               height: 40)
//        
//        priceError.frame = CGRect(x: 205,
//                                  y: 355,
//                                  width: 180,
//                                  height: 40)
//        
//        priceMax.frame = CGRect(x: 205,
//                                y: 355,
//                                width: 180,
//                                height: 40)
//        
//        proStatus.frame = CGRect(x: 265,
//                                 y: 360,
//                                 width: 50,
//                                 height: 30)
//        
//        statusTf.frame = CGRect(x: 320,
//                                y: 360,
//                                width: 65,
//                                height: 30)
//        
//        descriptionTf.frame = CGRect(x: 120,
//                                     y: 397,
//                                     width: 265,
//                                     height: 70)
//        
//        descMax.frame = CGRect(x: 87,
//                               y: 430,
//                               width: 180,
//                               height: 40)
//        
//        categoryTf.frame = CGRect(x: 145,
//                                  y: 470,
//                                  width: 180,
//                                  height: 40)
//        
//        categoryError.frame = CGRect(x: 330,
//                                     y: 470,
//                                     width: 180,
//                                     height: 40)
//        
//        categoryMax.frame = CGRect(x: 330,
//                                   y: 470,
//                                   width: 180,
//                                   height: 40)
//        
//        lengthTf.frame = CGRect(x: 145,
//                                y: 520,
//                                width: 180,
//                                height: 40)
//        
//        lengthError.frame = CGRect(x: 330,
//                                   y: 520,
//                                   width: 180,
//                                   height: 40)
//        
//        lengthMax.frame = CGRect(x: 330,
//                                 y: 520,
//                                 width: 180,
//                                 height: 40)
//        
//        widthTf.frame = CGRect(x: 145,
//                               y: 575,
//                               width: 180,
//                               height: 40)
//        
//        widthError.frame = CGRect(x: 330,
//                                  y: 575,
//                                  width: 180,
//                                  height: 40)
//        
//        widthMax.frame = CGRect(x: 330,
//                                y: 575,
//                                width: 180,
//                                height: 40)
//        
//        heightTf.frame = CGRect(x: 145,
//                                y: 630,
//                                width: 180,
//                                height: 40)
//        
//        heightError.frame = CGRect(x: 330,
//                                   y: 630,
//                                   width: 180,
//                                   height: 40)
//        
//        heightMax.frame = CGRect(x: 330,
//                                 y: 630,
//                                 width: 180,
//                                 height: 40)
//        
//        //allows the inputAccessoryView in textFieldView to show Buttons
//        let emailToolBar = UIToolbar()
//        emailToolBar.sizeToFit()
//        
//        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        
//        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.handleDone))
//        
//        emailToolBar.setItems([flexibleSpace, doneButton], animated: false)
//        
//        productTf.inputAccessoryView = emailToolBar
//        priceTf.inputAccessoryView = emailToolBar
//        categoryTf.inputAccessoryView = emailToolBar
//        lengthTf.inputAccessoryView = emailToolBar
//        widthTf.inputAccessoryView = emailToolBar
//        heightTf.inputAccessoryView = emailToolBar
//        
//        let passwordToolBar = UIToolbar()
//        passwordToolBar.sizeToFit()
//        
//        let prevButton = UIBarButtonItem(barButtonSystemItem: .undo, target: self, action: #selector(self.handlePrev))
//        
//        passwordToolBar.setItems([prevButton], animated: false)
//        
//        descriptionTf.inputAccessoryView = passwordToolBar
//        
//        //allows the inputAccessoryView in statusPickerView to show Buttons
//        let emailToolBar2 = UIToolbar()
//        emailToolBar2.sizeToFit()
//        
//        let flexibleSpace2 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        
//        let doneButton2 = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(self.statusCancel))
//        
//        emailToolBar2.setItems([flexibleSpace2, doneButton2], animated: false)
//        
//        statusTf.inputAccessoryView = emailToolBar2
//        
//    }
//    
//    @objc func statusCancel() {
//        
//        statusTf.resignFirstResponder()
//        statusTf.text = "Missing"
//        statusTf.textColor = .red
//        
//        clearButton.isHidden = true
//        proceedLabel.isHidden = true
//        
//        getOffKeyboard()
//        descriptionTf.becomeFirstResponder()
//        
//    }
//    
//    //when the DoneButtonIsPressedOnEmailField
//    @objc func handleDone() {
//        
//        let product = productTf.text
//        let price = priceTf.text
//        let category = categoryTf.text
//        let length = lengthTf.text
//        let width = widthTf.text
//        let height = heightTf.text
//        
//        switch product {
//        case "":
//            print("WHERE IS THIS GOING")
//            productError.isHidden = false
//            productMax.isHidden = true
//            
//        default:
//            print("Bitch add some text")
//            productError.isHidden = true
//            productMax.isHidden = false
//            priceTf.becomeFirstResponder()
//        }
//        
//        switch price {
//        case "" :
//            print("WHERE IS THIS GOING2")
//            priceError.isHidden = false
//            priceMax.isHidden = true
//        default:
//            print("Bitch add some text2")
//            priceError.isHidden = true
//            priceMax.isHidden = false
//            statusTf.becomeFirstResponder()
////            statusTf.textColor == .red ||
//            if statusTf.textColor == .black  {
//                categoryTf.becomeFirstResponder()
//            } else if statusTf.textColor == nil {
//                statusTf.becomeFirstResponder()
//            }
//        }
//        
//        switch category {
//        case "" :
//            print("WHERE IS THIS GOING4")
//            categoryError.isHidden = false
//            categoryMax.isHidden = true
//        default:
//            print("Bitch add some text4")
//            categoryError.isHidden = true
//            categoryMax.isHidden = false
//            lengthTf.becomeFirstResponder()
//        }
//        
//        switch length {
//        case "" :
//            print("WHERE IS THIS GOING5")
//            lengthError.isHidden = false
//            lengthMax.isHidden = true
//        default:
//            print("Bitch add some text5")
//            lengthError.isHidden = true
//            lengthMax.isHidden = false
//            widthTf.becomeFirstResponder()
//        }
//        
//        switch width {
//        case "" :
//            print("WHERE IS THIS GOING6")
//            widthError.isHidden = false
//            widthMax.isHidden = true
//        default:
//            print("Bitch add some text6")
//            widthError.isHidden = true
//            widthMax.isHidden = false
//            heightTf.becomeFirstResponder()
//        }
//        
//        switch height {
//        case "" :
//            print("WHERE IS THIS GOING7")
//            heightError.isHidden = false
//            heightMax.isHidden = true
//        default:
//            print("Bitch add some text7")
//            heightError.isHidden = true
//            heightMax.isHidden = false
//            heightTf.resignFirstResponder()
//            
//            if productError.isHidden == true && priceError.isHidden == true && statusTf.text != "Missing" && descriptionTf.text != "Please Enter Description..." && categoryError.isHidden == true && lengthError.isHidden == true && widthError.isHidden == true && heightError.isHidden == true {
//                uploadNavBar2()
//                clearButton.isHidden = false
//                proceedLabel.isHidden = false
//                
//            } else {
//                clearButton.isHidden = true
//                proceedLabel.isHidden = true
//                //takes away rightBarButton
//                navigationItem.rightBarButtonItem = .none
//            }
//        }
//        
//    }
//    
//    //when the UndoButtonIsPressedOnPasswordField
//    @objc func handlePrev() {
//        
//        let description = descriptionTf.text
//        
//        switch description {
//        case "" :
//            print("WHERE IS THIS GOING3")
//            descriptionTf.resignFirstResponder()
//            statusTf.becomeFirstResponder()
//        default:
//            print("add some text3")
//            descriptionTf.text = nil
//            descriptionTf.resignFirstResponder()
//            statusTf.becomeFirstResponder()
//            descMax.text = "Max"
//            descMax.textColor = .black
//        }
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
//        //New way to perform .isActive = true for loop
//        [
//            bottomImageContainerView.heightAnchor.constraint(equalToConstant: 122),
//            bottomImageContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            bottomImageContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 122),
//            bottomImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            bottomImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ].forEach{$0.isActive = true}
//        
//        bottomImageContainerView.addSubview(proceedLabel)
//        
//        [
//            proceedLabel.heightAnchor.constraint(equalToConstant: 60),
//            proceedLabel.widthAnchor.constraint(equalToConstant: 380),
//            proceedLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        ].forEach{$0.isActive = true}
//        
//    }
//    
//    //Once return key is pressed keyboard is dismissed, need to assign delegate to self to dismiss
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        
//        let product = productTf.text
//        let price = priceTf.text
//        let category = categoryTf.text
//        let length = lengthTf.text
//        let width = widthTf.text
//        let height = heightTf.text
//        
//        switch product {
//        case "":
//            print("WHERE IS THIS GOING")
//            productError.isHidden = false
//            productMax.isHidden = true
//        default:
//            print("Bitch add some text")
//            productError.isHidden = true
//            productMax.isHidden = false
//            priceTf.becomeFirstResponder()
//        }
//        
//        switch price {
//        case "" :
//            print("WHERE IS THIS GOING2")
//            priceError.isHidden = false
//            priceMax.isHidden = true
//        default:
//            print("Bitch add some text2")
//            priceError.isHidden = true
//            priceMax.isHidden = false
//            statusTf.becomeFirstResponder()
////            statusTf.textColor == .red ||
//            if statusTf.textColor == .black  {
//                categoryTf.becomeFirstResponder()
//            } else if statusTf.textColor == nil {
//                statusTf.becomeFirstResponder()
//            }
//        }
//        
//        switch category {
//        case "" :
//            print("WHERE IS THIS GOING4")
//            categoryError.isHidden = false
//            categoryMax.isHidden = true
//        default:
//            print("Bitch add some text4")
//            categoryError.isHidden = true
//            categoryMax.isHidden = false
//            lengthTf.becomeFirstResponder()
//        }
//        
//        switch length {
//        case "" :
//            print("WHERE IS THIS GOING5")
//            lengthError.isHidden = false
//            lengthMax.isHidden = true
//        default:
//            print("Bitch add some text5")
//            lengthError.isHidden = true
//            lengthMax.isHidden = false
//            widthTf.becomeFirstResponder()
//        }
//        
//        switch width {
//        case "" :
//            print("WHERE IS THIS GOING6")
//            widthError.isHidden = false
//            widthMax.isHidden = true
//        default:
//            print("Bitch add some text6")
//            widthError.isHidden = true
//            widthMax.isHidden = false
//            heightTf.becomeFirstResponder()
//        }
//        
//        switch height {
//        case "" :
//            print("WHERE IS THIS GOING7")
//            heightError.isHidden = false
//            heightMax.isHidden = true
//        default:
//            print("Bitch add some text7")
//            heightError.isHidden = true
//            heightMax.isHidden = false
//            heightTf.resignFirstResponder()
//            
//            if productError.isHidden == true && priceError.isHidden == true && statusTf.text != "Missing" && descriptionTf.text != "Please Enter Description..." && categoryError.isHidden == true && lengthError.isHidden == true && widthError.isHidden == true && heightError.isHidden == true {
//                uploadNavBar2()
//                clearButton.isHidden = false
//                proceedLabel.isHidden = false
//                
//            } else {
//                clearButton.isHidden = true
//                proceedLabel.isHidden = true
//                //takes away rightBarButton
//                navigationItem.rightBarButtonItem = .none
//            }
//            
//        }
//        
//        return true
//    }
//    
//    // allows view to move postion when clicked on keyboard in DescriptionCell
//    fileprivate func observeKeyboardNotifications1() {
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardAppear1), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDismiss1), name: UIResponder.keyboardDidHideNotification, object: nil)
//    }
//    
//    @objc func keyboardAppear1() {
//        
//        print("Keyboardshown1")
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
//            
//            self.view.frame = CGRect(x: 0, y: -208, width: self.view.frame.width, height: self.view.frame.height)
//            
//        }, completion: nil)
//    }
//    
//    @objc func keyboardDismiss1() {
//        print("KeyboardDismiss")
//        
//        UIView.animate(withDuration: 0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
//            
//            self.view.frame = CGRect(x: 0, y: 88, width: self.view.frame.width, height: self.view.frame.height)
//            
//        }, completion: nil)
//    }
//    
//    //this code limits the amount of characters inputed into textFields.tag
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        
//        switch textField.tag {
//        case 1:
//            let currentText = productTf.text ?? ""
//            guard let stringRange = Range(range, in: currentText) else {
//                return false
//            }
//            
//            let updateText = currentText.replacingCharacters(in: stringRange, with: string)
//            productError.isHidden = true
//            productMax.isHidden = false
//            productMax.text = "\(16 - updateText.count)"
//            if productTf.text!.count >= 15 {
//                
//                productMax.textColor = .red
//            } else {
//                
//                productMax.textColor = .black
//            }
//            
//            return updateText.count < 16
//        case 2:
//            let currentText2 = priceTf.text ?? ""
//            guard let stringRange2 = Range(range, in: currentText2) else {
//                return false
//            }
//            
//            let updateText2 = currentText2.replacingCharacters(in: stringRange2, with: string)
//            priceError.isHidden = true
//            priceMax.isHidden = false
//            priceMax.text = "\(16 - updateText2.count)"
//            if priceTf.text!.count >= 15 {
//                
//                priceMax.textColor = .red
//            } else {
//                
//                priceMax.textColor = .black
//            }
//            
//            return updateText2.count < 16
//        case 3:
//            let currentText3 = categoryTf.text ?? ""
//            guard let stringRange3 = Range(range, in: currentText3) else {
//                return false
//            }
//            
//            let updateText3 = currentText3.replacingCharacters(in: stringRange3, with: string)
//            categoryError.isHidden = true
//            categoryMax.isHidden = false
//            categoryMax.text = "\(16 - updateText3.count)"
//            if categoryTf.text!.count >= 15 {
//                
//                categoryMax.textColor = .red
//            } else {
//                
//                categoryMax.textColor = .black
//            }
//            
//            return updateText3.count < 16
//            
//        case 4:
//            let currentText4 = lengthTf.text ?? ""
//            guard let stringRange4 = Range(range, in: currentText4) else {
//                return false
//            }
//            
//            let updateText4 = currentText4.replacingCharacters(in: stringRange4, with: string)
//            lengthError.isHidden = true
//            lengthMax.isHidden = false
//            lengthMax.text = "\(6 - updateText4.count)"
//            if lengthTf.text!.count >= 5 {
//                
//                lengthMax.textColor = .red
//            } else {
//                
//                lengthMax.textColor = .black
//            }
//            
//            return updateText4.count < 6
//        case 5:
//            let currentText5 = widthTf.text ?? ""
//            guard let stringRange5 = Range(range, in: currentText5) else {
//                return false
//            }
//            
//            let updateText5 = currentText5.replacingCharacters(in: stringRange5, with: string)
//            widthError.isHidden = true
//            widthMax.isHidden = false
//            widthMax.text = "\(6 - updateText5.count)"
//            if widthTf.text!.count >= 5 {
//                
//                widthMax.textColor = .red
//            } else {
//                
//                widthMax.textColor = .black
//            }
//            
//            return updateText5.count < 6
//        case 6:
//            let currentText6 = heightTf.text ?? ""
//            guard let stringRange6 = Range(range, in: currentText6) else {
//                return false
//            }
//            
//            let updateText6 = currentText6.replacingCharacters(in: stringRange6, with: string)
//            heightError.isHidden = true
//            heightMax.isHidden = false
//            heightMax.text = "\(6 - updateText6.count)"
//            if heightTf.text!.count >= 5 {
//                
//                heightMax.textColor = .red
//            } else {
//                
//                heightMax.textColor = .black
//            }
//            
//            return updateText6.count < 6
//        default:
//            
//            break
//        }
//        
//        return true
//    }
//    
//    //This is code for descriptionTextView ifEmpty placeholder
//    func textViewDidBeginEditing(_ textView: UITextView) {
//        if textView.text == "Enter Description" {
//            textView.text = ""
//            textView.font = UIFont(name: "verdana", size: 18)
//            textView.textColor = .black
//            getOffKeyboard()
//        } else if textView.text == "Please Enter Description..." {
//            textView.text = ""
//            textView.font = UIFont(name: "verdana", size: 18)
//            textView.textColor = .black
//            getOffKeyboard()
//        }
//    }
//    
//    //This allows textView once Return Pressed ifEmpty to go down
//    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//        if text == "\n" {
//            textView.resignFirstResponder()
//            categoryTf.becomeFirstResponder()
//            
//        }
//        
//        //this is the code doesnt allow TextView to exceeed MaxNumberOfCharacters
//        if range.length + range.location > descriptionTf.text.count {
//            return false
//        }
//        
//        let newlength = descriptionTf.text.count - range.length
//        
//        return newlength <= 79
//    }
//    
//    //this allows placeholder to show once textView is nil again
//    func textViewDidEndEditing(_ textView: UITextView) {
//        if textView.text == "" {
//            textView.text = "Please Enter Description..."
//            textView.font = UIFont(name: "verdana", size: 18)
//            textView.textColor = .red
//            
//            clearButton.isHidden = true
//            proceedLabel.isHidden = true
//            //takes away rightBarButton
//            navigationItem.rightBarButtonItem = .none
//            
//        }
//        
//    }
//    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        
//        print("textFieldkeyboardShown")
//        
//        getOffKeyboard()
//        
//    }
//    
//    //this is the code needed for TextView to show MaxNumberOfCharacters
//    func countCharacters() {
//        
//        let allowedChars = 80
//        
//        let Updatechars = descriptionTf.text.count
//        
//        let remainingChars = "\(allowedChars - Updatechars)"
//        
//        print(remainingChars)
//        
//        if descriptionTf.text.count <= 60 {
//            
//            descMax.textColor = .black
//        }
//        
//        if descriptionTf.text.count >= 60 {
//            
//            descMax.textColor = .orange
//        }
//        
//        if descriptionTf.text.count >= 70 {
//            
//            descMax.textColor = .red
//        }
//        
//        if descriptionTf.text.count >= 80 {
//            
//            descriptionTf.resignFirstResponder()
//            
//            MaxAlert()
//            
//            clearButton.isHidden = true
//            proceedLabel.isHidden = true
//            //takes away rightBarButton
//            navigationItem.rightBarButtonItem = .none
//            
//        }
//        
//        descMax.text = String(remainingChars)
//        
//    }
//    
//    @objc func MaxAlert() {
//        
//        print("handleOrderback")
//        
//        let alert = UIAlertController(title: "You've Reach the Maximum Capacity of letters." , message: nil, preferredStyle: .alert)
//        
//        let cancelButton = UIAlertAction(title: "Ok", style: .default) { (action) in
//            print("this is my cancel ButtonAction1")
//            
//        }
//        
//        alert.addAction(cancelButton)
//        present(alert, animated: true, completion: nil)
//        
//    }
//    
//    //this is the code needed for TextView to show MaxNumberOfCharacters
//    func textViewDidChange(_ textView: UITextView) {
//        
//        countCharacters()
//    }
//    
//}
//
////I added this to make picker add image inside for secondPhoto when addImage is tapped
//extension UploadPhotoController3: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//    
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        picker.dismiss(animated: true, completion: nil)
//    }
//    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        
//        picker.dismiss(animated: true, completion: nil)
//        
//        guard let secondImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {
//            return
//        }
//        
//        iImageView2.image = secondImage
//    }
//    
//}
//
////status selection
//extension UploadPhotoController3: UIPickerViewDataSource, UIPickerViewDelegate {
//    
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        1
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        
//        return status.count
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        
//        return status[row]
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        
//        statusTf.text = status[row]
//        statusTf.textColor = .black
//        statusTf.resignFirstResponder()
//        descriptionTf.becomeFirstResponder()
//        print("\(status[row])")
//    }
//    
//}
