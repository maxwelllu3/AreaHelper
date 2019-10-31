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
        
        guard let givenRadius = r.text, givenRadius != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let numericRadius = Double(givenRadius) else {
            out.text = "Please input a number!"
            return
        }
        
        out.text = "Area of Circle: \(areaOfCircle(radius: numericRadius))"
    }

    
    
    
        
        
}
    



