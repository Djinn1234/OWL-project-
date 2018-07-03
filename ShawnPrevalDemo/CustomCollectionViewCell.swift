//
//  CustomCollectionViewCell.swift
//  ShawnPrevalDemo
//
//  Created by Some1Else on 25/06/2018.
//  Copyright © 2018 Some1Else. All rights reserved.
//

import UIKit

  class CustomCollectionViewCell: UICollectionViewCell {
    
    
       // var image = UIImage(named:"jonathan-denney-47983-unsplash")
    
    
    
    
 //   let sampleImageView: UIImageView = {
//    let iv = UIImageView(image: #imageLiteral(resourceName: "chat").withRenderingMode(.alwaysTemplate))
//    iv.contentMode = .scaleAspectFill
 //   iv.clipsToBounds = true
//    return iv
        
//    }()
    
    
    
    
    
        let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-heart-outline-50").withRenderingMode(.alwaysOriginal), for: .normal)
    //stackview
        return button
    }()

        let shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-forward-arrow-50").withRenderingMode(.alwaysOriginal), for: .normal)
        //stackview
        return button
    }()


   let thumbnailImageView: CustomImageView = {
    let imageView = CustomImageView()
    imageView.image = UIImage(named: "bar photo")
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = true
    
    
    return imageView
    
    }()
    
    
    
    let userProfileImageView: CustomImageView = {
        let imageView = CustomImageView()
        imageView.image = UIImage(named: "jonathan-denney-47983-unsplash")
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
        
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    
    
  
    
   override init(frame: CGRect) {
    super.init(frame: frame)
//add subviews
       // addSubview(sampleImageView)
         addSubview(separatorView)
         addSubview(userProfileImageView)
         addSubview(thumbnailImageView)
    
  
    
     //   userProfileImageView.translatesAutoresizingMaskIntoConstraints = false
     //   userProfileImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
     //   userProfileImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
     //   userProfileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
     //   userProfileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
    
    
    userProfileImageView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 8, paddingLeft: 40, paddingBottom: 15, paddingRight: 0, width: 50, height: 50)
    userProfileImageView.layer.cornerRadius = 50 / 2

    
    thumbnailImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 40, paddingBottom: 15, paddingRight: 0, width: 250, height: 60)
    
        ActionButtons()
    
    }
    
    
    // set up private functions to create buttons (stackview)
    // fix actionbuttons with instagramhomepostcell
    
    fileprivate func ActionButtons() {
        let stackView = UIStackView(arrangedSubviews: [likeButton,shareButton])
        
       stackView.distribution = .fillEqually
        
        addSubview(stackView)
        
        stackView.anchor(top: thumbnailImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 4, paddingBottom: 0, paddingRight: 0, width: 50, height: 50)
        
        addSubview(shareButton)
        shareButton.anchor(top: thumbnailImageView.bottomAnchor, left: nil, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 50, height: 50)
    }
    
    
    
    
    
    
        required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }

}


