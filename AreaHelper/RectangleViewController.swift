//
//  ViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class RectangleViewController: UIViewController {
    
    
    @IBOutlet weak var out: UILabel!
    @IBOutlet weak var l: UITextField!
    @IBOutlet weak var w: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func areaOfRectangle(length: Double, width: Double) -> Double {
        
        return length * width
        
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        let givenLength = l.text!
        let givenWidth = w.text!
        let numericLength = Double(givenLength)!
        let numericWidth = Double(givenWidth)!
        
        out.text = "Area of Rectangle: \(areaOfRectangle(length: numericLength, width: numericWidth))"
    }
    
    
    
        
        
}
    



