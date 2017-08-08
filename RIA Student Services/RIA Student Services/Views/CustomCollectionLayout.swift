//
//  CustomCollectionLayout.swift
//  RIA Student Services
//
//  Created by 蒋秋华 on 2017/8/3.
//  Copyright © 2017年 Malus. All rights reserved.
//

import UIKit

class CustomCollectionLayout: UICollectionViewFlowLayout {

    override init(){
        super.init()
        setUpLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLayout()
    }
    
    override var itemSize: CGSize{
        set{}
        
        get{
            let numberOfColumns: CGFloat = 3
            let itemWidth = (collectionView!.frame.width - (numberOfColumns - 1)) / numberOfColumns
            
            return CGSize(width:itemWidth, height:itemWidth)
            
            
        }
        
        
    }
    
    func setUpLayout(){
        minimumInteritemSpacing = 1
        minimumLineSpacing = 1
        scrollDirection = .vertical
        
    }
}
