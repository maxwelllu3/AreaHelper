//
//  ViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    
    @IBOutlet weak var out: UILabel!
    
    @IBOutlet weak var r: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func areaOfCircle(radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
        
    
    
    @IBAction func calculate(_ sender: Any) {
        
        let givenRadius = r.text!
        let numericRadius = Double(givenRadius)!
        
        out.text = "Area of Circle: \(areaOfCircle(radius: numericRadius))"
    }

    
    
    
        
        
}
    



