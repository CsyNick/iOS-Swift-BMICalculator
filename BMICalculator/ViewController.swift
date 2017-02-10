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
        if (txtHeight.text?.isEmpty)! {
            lblResult.text = "error"
        } else {
        let h = Double(txtHeight.text!)
        let w = Double(txtWeight.text!)
        
        let BMI = Double(w!/((h!/100)*(h!/100)))
        lblResult.text = String(BMI)
        
        switch BMI {
        case 0...18.48:
            lblSuggestion?.text = "You need to eat more.."
        case 18.48...24:
            lblSuggestion?.text = "Perfect! Keep going!"
        default:
            lblSuggestion?.text = "I don't to talk anymore XD"
    
            }
        }
        view.endEditing(true)
    }
  
   
    @IBAction func hideKB(_ sender: AnyObject) {
        txtHeight.resignFirstResponder()
        txtWeight.resignFirstResponder()
    }
}

