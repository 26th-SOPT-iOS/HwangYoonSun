//
//  FriendCell.swift
//  iOS_Third_Seminar_Assignment
//
//  Created by Yoonsun Hwang on 2020/05/12.
//  Copyright © 2020 Yoonsun Hwang. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    
    static let identifier: String = "FriendCell"

    @IBOutlet weak var friendImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setFriendInformation(friendImageName: String, name: String, message: String) { friendImageView.image = UIImage(named: friendImageName)
        nameLabel.text = name
        messageLabel.text = message
    }
    
}
