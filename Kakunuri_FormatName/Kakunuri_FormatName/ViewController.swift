//
//  ViewController.swift
//  Kakunuri_FormatName
//
//  Created by ArunReddy on 29/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNAmeTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onClickSubmit(_ sender: UIButton) {
        fullNameLabel.text = "Full Name:" + lastNameTextField.text! + ", " + firstNAmeTextField.text!
        
        let lastName=lastNameTextField.text![lastNameTextField.text!.startIndex].uppercased()
        let firstName = firstNAmeTextField.text![firstNAmeTextField.text!.startIndex].uppercased()
        initialsLabel.text="Initials : \(lastName)\(firstName)"
    }
    
    
   
    @IBAction func onClickReset(_ sender: UIButton) {
        
        firstNAmeTextField.text=""
        lastNameTextField.text=""
        fullNameLabel.text=""
        initialsLabel.text=""
        firstNAmeTextField.becomeFirstResponder()
    }
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
}

