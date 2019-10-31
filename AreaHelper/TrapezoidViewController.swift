//
//  ViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class TrapezoidViewController: UIViewController {
    

    @IBOutlet weak var out: UILabel!
    @IBOutlet weak var base1: UITextField!
    @IBOutlet weak var base2: UITextField!
    @IBOutlet weak var height: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func areaOfTrapezoid(base1: Double, base2: Double, height: Double) -> Double {
        
        let baseSum = base1 + base2
        
        return baseSum * height / 2
    }
    
        
        
    @IBAction func calculate(_ sender: Any) {
        
        guard let givenBase1 = base1.text, givenBase1 != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let givenBase2 = base2.text, givenBase2 != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let givenHeight = height.text, givenHeight != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let numericBase1 = Double(givenBase1) else {
            out.text = "Please enter a number!"
            return
        }
        
        guard let numericBase2 = Double(givenBase2) else {
            out.text = "Please enter a number!"
            return
        }
        
        guard let numericHeight = Double(givenHeight) else {
            out.text = "Please enter a number!"
            return
        }
        
        out.text = "Area of Trapezoid: \(areaOfTrapezoid(base1: numericBase1, base2: numericBase2, height: numericHeight))"
        
    }
    
        

    
        
        
    
    
    
    
    
        
        
}
    



