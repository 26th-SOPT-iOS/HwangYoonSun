//
//  FriendInformation.swift
//  iOS_Third_Seminar_Assignment
//
//  Created by Yoonsun Hwang on 2020/05/12.
//  Copyright © 2020 Yoonsun Hwang. All rights reserved.
//

struct FriendInformation {
    var friend: Friend
    var name: String
    var message: String
    
    init(friend: Friend, name: String, message: String) {
        self.friend = friend
        self.name = name
        self.message = message
    }
}

enum Friend {
    case friend1
    case friend2
    case friend3
    case friend4
    
    func getImageName() -> String {
        switch self {
        case .friend1: return "profile1Img"
        case .friend2: return "profile2Img"
        case .friend3: return "profile3Img"
        case .friend4: return "profile4Img"
        }
    }
}
