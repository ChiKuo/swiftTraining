//
//  RestaurantTableViewController.swift
//  Project 05 ActionForRow
//
//  Created by Chi Kuo on 2016/7/15.
//  Copyright © 2016年 Chi Kuo. All rights reserved.
//

import UIKit

class SpotTableViewController: UITableViewController {

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
    
    var spotList = ["Xinbeitou","Taipei 101","Yangmingshan","Longshan Temple","National Palace Museum","National Martyrs’ Shrine","Dadaocheng","Wisteria Tea House","Thermal Valley"]
    
    var spotImageList = ["Xinbeitou","Taipei 101","Yangmingshan","Longshan Temple","National Palace Museum","National Martyrs’ Shrine","Dadaocheng","Wisteria Tea House","Thermal Valley"]
  
    var locationList = ["Beitou Dist.Taipei City","Xinyi Dist.Taipei City","Beitou Dist.Taipei City","Wanhua Dist.Taipei City","Shilin Dist.Taipei City","Zhongshan Dist.Taipei City","Datong Dist.TaipeiCity","Daan Dist.Taipei City","Beitou Dist.Taipei City"]
    
    var isCheckList = [false,false,false,false,false,false,false,false,false]
    

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return spotList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SpotTableViewCell
        
        cell.nameLabel?.text = spotList[indexPath.row]
        cell.locationLabel?.text = locationList[indexPath.row]
        cell.spotImage?.image = UIImage(named: spotImageList[indexPath.row])
        cell.accessoryType = isCheckList[indexPath.row] ? .Checkmark :  .None
        
        return cell
    }
    
    // Call the function when click the cell
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        // Create alert
        let optionMenu = UIAlertController(title: nil,message: "What do you want to do ? ",preferredStyle: .ActionSheet)
        
        // Cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        optionMenu.addAction(cancelAction)

        // Call action
        let callActionHandler = {(action:UIAlertAction!) -> Void in
            
            // Show message alert
            let alertMessage = UIAlertController(title: nil , message:  "Sorry, the call feature is not available yet . Please try later." , preferredStyle: .Alert)
            alertMessage.addAction(UIAlertAction(title: "OK" , style: .Default ,handler: nil))
            self.presentViewController(alertMessage, animated: true, completion: nil)
        }
        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .Default, handler: callActionHandler)
        optionMenu.addAction(callAction)
        
        // Chcek action
        let checkAction = UIAlertAction(title: "Check \(spotList[indexPath.row])", style: .Default, handler:  { (action: UIAlertAction!) -> Void in
            
            // Add accessory on cell
            // accessoryType = .Checkmark / DetailButton / DetailDisclosureButton / DisclosureIndicator
            let cell = tableView.cellForRowAtIndexPath(indexPath)
        
            if self.isCheckList[indexPath.row] {
                cell?.accessoryType = .None
                self.isCheckList[indexPath.row] = false
            } else {
                cell?.accessoryType = .Checkmark
                self.isCheckList[indexPath.row] = true
            }
            
            // TODO change image size
            
        })
        optionMenu.addAction(checkAction)
        
        // Add acrion to alert & show on view        
        self.presentViewController(optionMenu, animated: true, completion: nil)
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
