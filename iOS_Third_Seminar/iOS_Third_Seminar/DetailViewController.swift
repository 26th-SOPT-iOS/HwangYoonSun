//
//  DetailViewViewController.swift
//  iOS_Third_Seminar
//
//  Created by Yoonsun Hwang on 2020/05/09.
//  Copyright © 2020 Yoonsun Hwang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var imageName: String = ""
    var date: String = ""
    var subTitle: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        // Do any additional setup after loading the view.
    }
    
    private func initView() {
        weatherImageView.image = UIImage(named: imageName)
        dateLabel.text = date
        subTitleLabel.text = subTitle
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
