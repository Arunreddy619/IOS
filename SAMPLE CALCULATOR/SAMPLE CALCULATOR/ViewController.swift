//
//  ViewController.swift
//  SAMPLE CALCULATOR
//
//  Created by Kakunuri,Arun Reddy on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UILABEL: UILabel!
    var operand1 = -1.1;
    var operand2 = -1.1;
    var calcOperator = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BUTTON6(_ sender: UIButton) {
        UILABEL.text = "6"
        if operand1 == -1.1{
            operand1=6
        }
        else{ operand2=6
        }
        
        }
            
    
    @IBAction func BUTTON9(_ sender: UIButton) {
        UILABEL.text = UILABEL.text!+"9"
        if operand2 == -1.1{
            operand2=9
        }
        else{
            operand2=9
        }
        
        }
    
    
    @IBAction func BUTTONPLUS(_ sender: UIButton) {
        UILABEL.text=UILABEL.text! + "+"
        if calcOperator==" "{
            calcOperator="+"
        }
    }
    
    @IBAction func BUTTONEQUALS(_ sender: UIButton) {
        UILABEL.text=UILABEL.text! + "="
        if calcOperator == "+"{
            UILABEL.text = UILABEL.text!
            + "\(operand1+operand2)"
        
    }
    
    }
    
}

