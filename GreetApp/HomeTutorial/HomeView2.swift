//
//  PageCell.swift
//  GreetApp
//
//  Created by Mario Bahena on 12/16/21.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    var page: Page? {
        didSet {
            //            print(page?.imageName)
            
            guard let unwrappedPage = page else { return }
            
            step1ImageView.image = UIImage(named: page!.imageName)
            
            let attributedText = NSMutableAttributedString(string: unwrappedPage.headerText, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
            //        let attributedText = NSMutableAttributedString(string: "Take a chance to have everything you wished for!", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
            
            attributedText.append(NSAttributedString(string: "\n\n\n\(unwrappedPage.bodyText)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.black]))
            
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center
        }
    }
    
    private let step1ImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "step-1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Take a chance to have everything you wished for!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        //        let attributedText = NSMutableAttributedString(string: "Take a chance to have everything you wished for!", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\n\nAre you ready to take a chance on acquiring everything you wished for! join now.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.black]))
        
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        //        textView.backgroundColor = .gray
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .yellow
        //        backgroundColor = .gray
        
        setupLayout()
        
    }
    
    private func setupLayout() {
        let topImageContainerView = UIView()
        
        topImageContainerView.backgroundColor = .blue
        
        addSubview(topImageContainerView)
        
        //        enable auto layout
        
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        topImageContainerView.addSubview(step1ImageView)
        
        step1ImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        step1ImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        step1ImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
        addSubview(descriptionTextView)
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
