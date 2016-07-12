//
//  ViewController.swift
//  Project 02 StackView
//
//  Created by Chi Kuo on 2016/7/12.
//  Copyright © 2016年 Chi Kuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // TODO image fit aspect

    @IBAction func openFacebookURL(){
        let url = NSURL(string: "https://www.facebook.com/chi.kuo.777")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func openGithubURL(){
        let url = NSURL(string: "https://github.com/ChiKuo")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func openLinkedInURL(){
        let url = NSURL(string: "https://www.linkedin.com/in/chi-kuo-99596781")!
        UIApplication.sharedApplication().openURL(url)
    }
    
}

