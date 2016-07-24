//
//  UserDetailViewController.swift
//  Project 06 NavigationAndSegue
//
//  Created by Chi Kuo on 2016/7/24.
//  Copyright © 2016年 Chi Kuo. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {

    @IBOutlet var photoImageView : UIImageView?
    @IBOutlet var nameLable : UILabel!
    @IBOutlet var locationLable : UILabel!
    
    var user : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = user.name
        
        
        nameLable.text = user.name
        locationLable.text = user.location
        photoImageView?.image = UIImage(named: user.image)
        photoImageView?.layer.cornerRadius = 100
        photoImageView?.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
