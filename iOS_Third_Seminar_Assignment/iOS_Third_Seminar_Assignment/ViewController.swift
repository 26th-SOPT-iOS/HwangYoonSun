//
//  ViewController.swift
//  iOS_Third_Seminar_Assignment
//
//  Created by Yoonsun Hwang on 2020/05/12.
//  Copyright © 2020 Yoonsun Hwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var friendTableView: UITableView!
    
    private var friendInformations: [FriendInformation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setfriendInformations()
        friendTableView.delegate = self
        friendTableView.dataSource = self
    }

    private func setfriendInformations() {
    let friend1 = FriendInformation(friend: .friend1, name: "이름1", message: "배고프다")
    let friend2 = FriendInformation(friend: .friend1, name: "이름2", message: "머리 아프다")
    let friend3 = FriendInformation(friend: .friend1, name: "이름3", message: "졸립다")
    let friend4 = FriendInformation(friend: .friend1, name: "이름4", message: "쉬고 싶다")
        
    friendInformations = [friend1, friend2, friend3, friend4]

}

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendInformations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let friendCell = tableView.dequeueReusableCell(withIdentifier: FriendCell.identifier, for: indexPath) as? FriendCell
        else { return UITableViewCell() }
        friendCell.setFriendInformation(friendImageName: friendInformations[indexPath.row].friend.getImageName(),
                                       name: friendInformations[indexPath.row].name,
                                       message:friendInformations[indexPath.row].message)
    return friendCell
}
    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { return 80
        }
    }
}
