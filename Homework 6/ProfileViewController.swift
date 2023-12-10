//
//  ProfileViewController.swift
//  Homework 6
//
//  Created by Nikol Vasileva on 13.01.23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var ageSliderValueLabel: UILabel!
    @IBOutlet weak var heightSliderValueLabel: UILabel!
    @IBOutlet weak var weightSliderValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ageSliderValueChanged(_ sender: UISlider) {
        self.ageSliderValueLabel.text = "Години: \(Int(sender.value))"
    }
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        self.heightSliderValueLabel.text = "Сантиметри: \(Int(sender.value))"
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        self.weightSliderValueLabel.text = "Килограми: \(Int(sender.value))"
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
