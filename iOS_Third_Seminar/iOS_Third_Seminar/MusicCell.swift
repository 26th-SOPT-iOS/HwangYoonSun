//
//  MusicCell.swift
//  iOS_Third_Seminar
//
//  Created by Yoonsun Hwang on 2020/05/09.
//  Copyright © 2020 Yoonsun Hwang. All rights reserved.
//

import UIKit

class MusicCell: UICollectionViewCell {
    static let idenfifier: String = "MusicCell"
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    func set(_ musicInformation: Music) {
        albumImageView.image = musicInformation.albumImg
        titleLabel.text = musicInformation.musicTitle
        subTitleLabel.text = musicInformation.singer
    }
}
