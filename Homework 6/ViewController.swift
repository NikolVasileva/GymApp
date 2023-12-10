//
//  ViewController.swift
//  Homework 6
//
//  Created by Nikol Vasileva on 7.01.23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var entryButtonOutlet: UIButton!
    
    @IBOutlet weak var logoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.logoImageView.image = UIImage(named:"HW6-logo")
        self.logoImageView.contentMode = .scaleAspectFit
        self.logoImageView.alpha = 0.7
        
        //image - corner radius and border
        self.logoImageView.layer.cornerRadius = logoImageView.frame.width / 2
        self.logoImageView.clipsToBounds = true
        self.logoImageView.layer.borderWidth = 2
        self.logoImageView.layer.borderColor = CGColor(red: 225.0, green: 225.0, blue: 0.0, alpha: 1.0)
        
        // image shadow
        self.logoImageView.layer.shadowColor = UIColor.gray.cgColor
        self.logoImageView.layer.shadowOpacity = 1
        self.logoImageView.layer.shadowRadius = 5
        self.logoImageView.layer.shadowOffset = CGSize(width: 100, height: 100)
        
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
        entryButtonOutlet?.isUserInteractionEnabled = false
        entryButtonOutlet?.alpha = 0.5
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2.0) {
            self.logoImageView.alpha = 1
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case self.emailTextField:
            self.passwordTextField.becomeFirstResponder()
        case self.passwordTextField:
            self.passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        _ = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        
        if self.emailTextField!.text!.isEmpty {
            
            entryButtonOutlet.isUserInteractionEnabled = false
            entryButtonOutlet.alpha = 0.5
            
        }
        if self.passwordTextField!.text!.isEmpty {
            entryButtonOutlet.isUserInteractionEnabled = false
            entryButtonOutlet.alpha = 0.5
        }
        else {
            
            entryButtonOutlet.isUserInteractionEnabled = true
            entryButtonOutlet.alpha = 1
        }
        
        return true
    }
        
   
    
}
