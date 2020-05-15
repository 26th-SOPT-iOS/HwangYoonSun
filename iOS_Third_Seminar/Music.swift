//
//  Music.swift
//  iOS_Third_Seminar
//
//  Created by Yoonsun Hwang on 2020/05/09.
//  Copyright © 2020 Yoonsun Hwang. All rights reserved.
//

import UIKit

// Music 모델
struct Music {
    
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named: coverName)
        self.musicTitle = title
        self.singer = singer
    }
    
}

