//
//  ViewController.swift
//  EvenOrOdd
//
//  Created by Kakunuri,Arun Reddy on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var NumberField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func SubmitButton(_ sender: Any) {
    
        var output=Int(NumberField.text!)
        if(output! % 2 == 0){
            DisplayLabel.text="\(output!) is even";
            
        }
        else{
            DisplayLabel.text="\(output!) is odd";
            
            
        }
        
    }

    }
    


