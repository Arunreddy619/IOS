//
//  ViewController.swift
//  CourseDisplayApp3
//
//  Created by Kakunuri,Arun Reddy on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    let courses=[["img01","44555","Netwotk Security","Fall 2022"],["img02","44643","ios","Spring2022"],["img03","44656","Data Straming","Fall 2022"]]
    var imageNumber=0
    //The details of tne code in Zero position is Displayed (image,crsNum,crsTitle,crsSem) in 0th position is displayed.
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi(imageNum: imageNumber)
       
        
    }

    @IBAction func
    previousButton(_ sender: UIButton) {
        nextButton.isEnabled=true
        //previous button ius enabled
      //decrement image number
      imageNumber-=1
        updateUi(imageNum: imageNumber)
        //once u reach the beggining of the array previous button should be disable
        
        if(imageNumber==0){
            previousButton.isEnabled=false
        }
        //
    }
    @IBAction func
    nextButton(_ sender: UIButton) {
        imageNumber+=1
        updateUi(imageNum: imageNumber)
        //update the UI of the Next course by incrementing image number
        previousButton.isEnabled=true
        //previous button must be enabled
        //once the user reach the end of the array,the next button should be enabled
        if(imageNumber==courses.count-1){
            nextButton.isEnabled=false
        }
        
    }
    func updateUi(imageNum:Int){
        displayImage.image=UIImage(named: courses[imageNum][0])
        crsNum.text=courses[imageNum][1]
        crsTitle.text=courses[imageNum][2]
        crsSem.text=courses[imageNum][3]
       
        
        
    }
}

