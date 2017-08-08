//
//  LostItemCell.swift
//  RIA Student Services
//
//  Created by 蒋秋华 on 2017/8/3.
//  Copyright © 2017年 Malus. All rights reserved.
//

import Foundation
import FirebaseDatabase


struct LostItem{
    
    let key: String
    let url: String
    
    let itemRef: DatabaseReference?
    
    init(url: String, key:String){
        self.key = key
        self.url = url
        self.itemRef = nil
        
    }
    
    init(snapshot: DataSnapshot){
        key = snapshot.key
        itemRef = snapshot.ref
        
        let snapshotValue = snapshot.value as? NSDictionary
        if let imageUrl = snapshotValue?["url"] as? String{
            url = imageUrl
        }
        else{
            url = ""
        }
    }
    
}
