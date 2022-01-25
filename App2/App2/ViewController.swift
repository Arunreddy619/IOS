//
//  ViewController.swift
//  App2
//
//  Created by Kakunuri,Arun Reddy on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textoutlet: UITextField!
    
    @IBOutlet weak var Displaylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Buttonclicked(_ sender: UIButton) {
        var enteredText=Textoutlet.text!
        if(enteredText.contains("a") ||
           enteredText.contains("e")){
            Displaylabel.text="The text has vowel"
            
            
        }
        else{
            Displaylabel.text="No vowels found!"
        }
    }
}

