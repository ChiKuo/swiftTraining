//
//  UserTableViewCell.swift
//  Project 06 NavigationAndSegue
//
//  Created by Chi Kuo on 2016/7/23.
//  Copyright © 2016年 Chi Kuo. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLable : UILabel!
    @IBOutlet var photoImage : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
