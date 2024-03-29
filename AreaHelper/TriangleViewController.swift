//
//  TriangleViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class TriangleViewController: UIViewController {
    
    // Set all the outlets
    @IBOutlet weak var out: UILabel!
    @IBOutlet weak var base: UITextField!
    @IBOutlet weak var height: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Create the function to calculate the area.
    func areaOfTriangle(base: Double, height: Double) -> Double {
        return base * height / 2
    }
    
    // Outlet and function to calculate the area.
    @IBAction func calculate(_ sender: Any) {
        
        guard let givenBase = base.text, givenBase != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let givenHeight = height.text, givenHeight != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let numericBase = Double(givenBase) else {
            out.text = "Please enter a number!"
            return
        }
        
        guard let numericHeight = Double(givenHeight) else {
            out.text = "Please enter a number!"
            return
        }
        
        out.text = "Area of Triangle: \(areaOfTriangle(base: numericBase, height: numericHeight))"
        
    }
        
}
