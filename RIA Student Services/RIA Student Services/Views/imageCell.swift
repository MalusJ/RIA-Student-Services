//
//  imageCell.swift
//  RIA Student Services
//
//  Created by 蒋秋华 on 2017/8/3.
//  Copyright © 2017年 Malus. All rights reserved.
//

import UIKit

class imageCell: UICollectionViewCell{
    
    @IBOutlet weak var itemImage: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.itemImage.image = nil
    }
    
    
    
}
