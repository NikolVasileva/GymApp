//
//  VideotekaViewController.swift
//  Homework 6
//
//  Created by Nikol Vasileva on 14.01.23.
//

import UIKit

class VodViewController: UIViewController {

    @IBOutlet weak var videotekaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.videotekaImage.layer.cornerRadius = 10
        self.videotekaImage.layer.shadowColor = UIColor.gray.cgColor
        self.videotekaImage.layer.shadowRadius = 10
        self.videotekaImage.layer.shadowOpacity = 1
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
