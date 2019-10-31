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
        
        let givenBase1 = base1.text!
        let givenBase2 = base2.text!
        let givenHeight = height.text!
        let numericBase1 = Double(givenBase1)!
        let numericBase2 = Double(givenBase2)!
        let numericHeight = Double(givenHeight)!
        
        out.text = "Area of Trapezoid: \(areaOfTrapezoid(base1: numericBase1, base2: numericBase2, height: numericHeight))"
        
    }
    
        

    
        
        
    
    
    
    
    
        
        
}
    



