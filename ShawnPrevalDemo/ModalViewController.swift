//
//  ModalViewController.swift
//  ShawnPrevalDemo
//
//  Created by Shawn  Preval  on 6/25/18.
//  Copyright © 2018 Some1Else. All rights reserved.
//


import UIKit


class ModalViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        collectionView?.backgroundColor = UIColor.white
        
        let button = UIButton.init(type: .system)
        button.frame = CGRect(x: 50.0, y: 150.0, width: 200.0, height: 52.0)
        button.setTitle("ButtonClicked", for: .normal)
        button.layer.borderWidth = 5.0
        button.layer.borderColor = UIColor.white.cgColor
        button.backgroundColor = UIColor.black
        button.titleLabel?.textColor = UIColor.white
        button.tintColor = UIColor.white
        button.layer.cornerRadius = 15.0
        button.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    @objc func buttonClicked(_ : UIButton) {
        
        dismiss(animated: false, completion: nil)
        print("Like this video is clicked/tapped.")
    }
    
}


