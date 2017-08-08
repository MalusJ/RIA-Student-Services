//
//  DisplayAnnouncementController.swift
//  RIA Student Services
//
//  Created by 蒋秋华 on 2017/8/1.
//  Copyright © 2017年 Malus. All rights reserved.
//

import UIKit


class DisplayAnnouncementController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let announcement = ["Basketball Game","AP test","BBQ","Camping","Shuttle to Chinese Markket","WaterFire","Summer break","Back to school","Sports Day", "Pajama day", "Movie day", "Shopping"]
    let time = ["2 Aug, 17:00", "tbd", "4 Aug, 11:00", "5 Aug, 13:00 - 17:00", "3 Aug, 17:00", "Every weekend", "18 Jun - 31 Aug","Oct 1", "Oct 2" , "Oct 3", "Oct 4", "Oct 5"]
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 12
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnnouncementCell", for: indexPath)as! AnnouncementCell
     //   cell.announcement
        cell.announcementTitle.text = announcement[indexPath.row]
        cell.announcementTime.text = time[indexPath.row]
      
        return cell

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
}
