//
//  ViewController.swift
//  BMICalculator
//
//  Created by Nick Chung on 2017/2/8.
//  Copyright © 2017年 Nick Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtHeight: UITextField!
  
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var lblSuggestion: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcBMI(_ sender: AnyObject) {
        
        let Height = Double(txtHeight.text!)
        let Weight = Double(txtWeight.text!)
        let BMI = Double(Weight!/((Height!/100)*(Height!/100)))
        lblResult.text = String(BMI)
        
        switch BMI {
        case 0...18.48:
            lblSuggestion?.text = "eee"
        default:
            lblSuggestion?.text = "error"
        }
        
    }
  
   
    @IBAction func hideKB(_ sender: AnyObject) {
        txtHeight.resignFirstResponder()
        txtWeight.resignFirstResponder()
    }
}

