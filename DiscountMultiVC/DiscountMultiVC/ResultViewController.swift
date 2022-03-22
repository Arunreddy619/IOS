//
//  ResultViewController.swift
//  DiscountMultiVC
//
//  Created by Kakunuri,Arun Reddy on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enterAmountOutlet: UILabel!
    @IBOutlet weak var enterDiscountOutlet: UILabel!
    
    @IBOutlet weak var priceAfterDiscount: UILabel!
    var amount=""
    var discrate=""
    var PriceAfterDiscount = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterAmountOutlet.text=enterAmountOutlet.text! + amount
        enterDiscountOutlet.text = enterDiscountOutlet.text! + discrate
        priceAfterDiscount.text = priceAfterDiscount.text!+PriceAfterDiscount
        
        

        // Do any additional setup after loading the view.
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
