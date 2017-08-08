//
//  LostAndFoundPageDisplay.swift
//  RIA Student Services
//
//  Created by 蒋秋华 on 2017/8/3.
//  Copyright © 2017年 Malus. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuthUI
import FirebaseDatabase


class LostAndFoundPage: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var imageCollection: UICollectionView!
    
    var customImageFlowLayout: CustomCollectionLayout!
    
    var images = [UIImage]()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        imageCollection.dataSource = self
        imageCollection.delegate = self
        loadImage()
        
        customImageFlowLayout = CustomCollectionLayout()
        imageCollection.collectionViewLayout = customImageFlowLayout
        imageCollection.backgroundColor = .white
        
    }
    
    func loadImage(){
        images.append(UIImage(named: "image6")!)
        images.append(UIImage(named: "image1")!)
        images.append(UIImage(named: "image2")!)
        images.append(UIImage(named: "image3")!)
        images.append(UIImage(named: "image4")!)
        images.append(UIImage(named: "image5")!)
        images.append(UIImage(named: "image7")!)
        images.append(UIImage(named: "image8")!)
        images.append(UIImage(named: "image9")!)
        images.append(UIImage(named: "image9")!)
        images.append(UIImage(named: "image9")!)
        images.append(UIImage(named: "image9")!)
        images.append(UIImage(named: "image9")!)
        images.append(UIImage(named: "image9")!)
        images.append(UIImage(named: "image9")!)
        
        self.imageCollection.reloadData()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = imageCollection.dequeueReusableCell(withReuseIdentifier: "itemImage", for: indexPath) as! imageCell
        let image = images[indexPath.row]
        cell.itemImage.image = image
        return cell
        
    }
    






}
