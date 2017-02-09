//
//  ViewController.swift
//  BMICalculator
//
//  Created by Nick Chung on 2017/2/8.
//  Copyright © 2017年 Nick Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textHeight: UITextField!
    
    @IBOutlet weak var textWeight: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var lblSuggestion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcBMI(_ sender: AnyObject) {
        
    }
  
}

