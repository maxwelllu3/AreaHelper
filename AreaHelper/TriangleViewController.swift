//
//  ViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class TriangleViewController: UIViewController {
    
    
    @IBOutlet weak var out: UILabel!
    @IBOutlet weak var base: UITextField!
    @IBOutlet weak var height: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func areaOfTriangle(base: Double, height: Double) -> Double {
        
        return base * height / 2
        
    }
    
  
        
    @IBAction func calculate(_ sender: Any) {
        
        let givenBase = base.text!
        let givenHeight = height.text!
        let numericBase = Double(givenBase)!
        let numericHeight = Double(givenHeight)!
        
        out.text = "Area of Triangle: \(areaOfTriangle(base: numericBase, height: numericHeight))"
        
    }
    
    
    
    
    
        
        
}
    



