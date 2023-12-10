//
//  TermsViewController.swift
//  Homework 6
//
//  Created by Nikol Vasileva on 7.01.23.
//

import UIKit

class TermsViewController: UIViewController {
    

    
    @IBOutlet weak var continueTapped: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.continueTapped.isUserInteractionEnabled = false
        self.continueTapped.alpha = 0.5

    }
    
    
    @IBAction func termsSwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            continueTapped.isUserInteractionEnabled = true
            continueTapped?.alpha = 1
        } else {
            continueTapped.isUserInteractionEnabled = false
            continueTapped?.alpha = 0.5
            
           
        }
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
