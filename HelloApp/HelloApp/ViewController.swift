//
//  ViewController.swift
//  HelloApp
//
//  Created by Kakunuri,Arun Reddy on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameOutlet: UITextField!
    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var GradeOutlet: UITextField!
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ButtonClicked(_ sender: Any) {
        var name=NameOutlet.text!
        var Grade=GradeOutlet.text!
        
        DisplayLabel.text="Hello,\(name)!,\(Grade)!"
        
        
    }
}

