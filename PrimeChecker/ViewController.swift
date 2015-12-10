//
//  ViewController.swift
//  PrimeChecker
//
//  Created by diego prats on 12/10/15.
//  Copyright © 2015 diego prats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var responseTextField: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        responseTextField.hidden = true
        
        
        
    }
    
    
    @IBAction func primeButtonPressed(sender: AnyObject) {
        
        //get the number from the textfield
        if let numberToCheck = Int(numberTextField.text!) {
            
            responseTextField.hidden = false

  
            //check if it is a prime
            if isPrime(numberToCheck){
                responseTextField.hidden = false
                responseTextField.text = "Yes, it is a prime"

            } else {

                responseTextField.text = "No, it is not a prime"
            }
            
            
        }
        
    }
    
    func isPrime(num:Int)-> Bool {
        
        //divide N by every number 2.... to squre root of N
//        let root = sqrt(Double(num))
        
        var divisor:Int
        for divisor = 2; divisor < num; ++divisor{
            
            if num % divisor == 0 {
                return false
            }
            
        }
        return true
    }

   
}

