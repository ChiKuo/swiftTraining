//
//  FoodTableViewCell.swift
//  Project 04 PrototypeCell
//
//  Created by Chi Kuo on 2016/7/14.
//  Copyright © 2016年 Chi Kuo. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet var nameLable : UILabel!
    @IBOutlet var photoImageView : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
