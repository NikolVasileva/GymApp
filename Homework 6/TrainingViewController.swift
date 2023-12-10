//
//  TrainingViewController.swift
//  Homework 6
//
//  Created by Nikol Vasileva on 14.01.23.
//

import UIKit

class TrainingViewController: UIViewController {

@IBOutlet weak var videoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.videoView.layer.cornerRadius = 10
        self.videoView.layer.shadowColor = UIColor.gray.cgColor
        self.videoView.layer.shadowRadius = 10
        self.videoView.layer.shadowOpacity = 1
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
