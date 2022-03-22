//
//  ViewController.swift
//  DiscountMultiVC
//
//  Created by Kakunuri,Arun Reddy on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discoutnOutlet: UITextField!
    
    var priceAfterDiscount=0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcDiscountButtonClicked(_ sender: UIButton) {
        var amount=Double (amountOutlet.text!)
        var discrate=Double (discoutnOutlet.text!)
        priceAfterDiscount=amount! - (amount!*discrate!/100)
        
        
    }
    
   
    
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          var transition = segue.identifier
          if transition == "resultSegue"{
              //make ResultViewController as a destination
              var destination = segue.destination as! ResultViewController
              
              destination.amount = amountOutlet.text!
              destination.discrate = discoutnOutlet.text!
              destination.PriceAfterDiscount = String(priceAfterDiscount)
          }
      }
}

