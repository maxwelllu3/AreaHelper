//
//  RectangleViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class RectangleViewController: UIViewController {
    
    // Set all the outlets
    @IBOutlet weak var out: UILabel!
    @IBOutlet weak var l: UITextField!
    @IBOutlet weak var w: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Create the function to calculate the area.
    func areaOfRectangle(length: Double, width: Double) -> Double {
        return length * width
    }
    
    // Outlet and function to calculate the area.
    @IBAction func calculate(_ sender: Any) {
        
        guard let givenLength = l.text, givenLength != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let givenWidth = w.text, givenWidth != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let numericLength = Double(givenLength) else {
            out.text = "Please enter a number!"
            return
        }
        
        guard let numericWidth = Double(givenWidth) else {
            out.text = "Please enter a number!"
            return
        }
        
        out.text = "Area of Rectangle: \(areaOfRectangle(length: numericLength, width: numericWidth))"
    }
    
}
