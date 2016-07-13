//
//  ViewController.swift
//  Project 03 TableView
//
//  Created by Chi Kuo on 2016/7/13.
//  Copyright © 2016年 Chi Kuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var locationName = ["Keelung","Taipei","New Taipei","Hsinchu","Taichung","Tainan","Kaohsiung","Yilan","Taoyuan","Hsinchu","Miaoli","Taichung","Changhua","Nantou","Yunlin","Chiayi","Tainan","Kaohsiung","Pingtung","Taitung","Hualien","Penghu"]
    
    // Return row count
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationName.count
    }

    // Call when the table row show
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        cell.textLabel?.text = locationName[indexPath.row]
        cell.imageView?.image = UIImage(named: "taiwan")
        
        return cell
    }
    
//    // Can hide the status bar
//    override func prefersStatusBarHidden() -> Bool {
//        return true
//    }
    
}

