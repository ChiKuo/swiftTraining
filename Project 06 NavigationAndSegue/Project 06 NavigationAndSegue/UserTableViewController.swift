//
//  UserTableViewController.swift
//  Project 06 NavigationAndSegue
//
//  Created by Chi Kuo on 2016/7/23.
//  Copyright © 2016年 Chi Kuo. All rights reserved.
//

import UIKit

class UserTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    var userList : [User] = [User(name:"Jesse Elliott",image: "Jesse Elliott",location: "California"),
                             User(name:"Angel Mckenzie",image: "Angel Mckenzie",location: "New York"),
                             User(name:"Chad Higgins",image: "Chad Higgins",location: "Florida"),
                             User(name:"Edith Lindsey",image: "Edith Lindsey",location: "Nevada"),
                             User(name:"Floyd Porter",image: "Floyd Porter",location: "New Mexico"),
                             User(name:"Nick Lamb",image: "Nick Lamb",location: "Michigan"),
                             User(name:"Pat Black",image: "Pat Black",location: "California"),
                             User(name:"Richard Bailey",image: "Richard Bailey",location: "New York")]
    

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UserTableViewCell
        
        var user : User
        user = userList[indexPath.row]
        cell.nameLable.text = user.name
        cell.photoImage?.image = UIImage(named: user.image)
        cell.photoImage?.layer.cornerRadius = 40.0
        cell.photoImage?.clipsToBounds = true

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showUserDetail" {
            if let indexPath = tableView.indexPathForSelectedRow{
                
                let destinationViewController = segue.destinationViewController as! UserDetailViewController
               
                destinationViewController.user = userList[indexPath.row]
            
            }
        }
    }
 

}
