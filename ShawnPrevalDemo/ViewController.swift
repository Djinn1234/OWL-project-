//
//  ViewController.swift
//  ShawnPrevalDemo
//
//  Created by Some1Else on 25/06/2018.
//  Copyright © 2018 Some1Else. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView?.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.backgroundColor = UIColor.white
        collectionView?.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(50, 0, 0, 0)

    }
    
    //override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    // create modal view controller (connect carlos storyboard) 
    
    
    
  //  let layout = UICollectionViewFlowLayout()
 //   let modalViewController = ModalViewController(collectionViewLayout: layout)
    
  //  present(modalViewController, animated: false, completion: nil)
    
    
    
    
  //  }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
        let layout = UICollectionViewFlowLayout()
        let modalViewController = ModalViewController(collectionViewLayout: layout)
        
        present(modalViewController, animated: false, completion: nil)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CustomCollectionViewCell
        
        
        cell.contentView.layer.cornerRadius = 2.0
        cell.contentView.layer.borderWidth = 1.5
        cell.contentView.layer.borderColor = UIColor.white.cgColor
        cell.contentView.layer.masksToBounds = true;
        
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width:0,height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false;
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
      
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 400, height: 350);      
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

