//
//  KiteViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class KiteViewController: UIViewController {
    
    // Set all the outlets
    @IBOutlet weak var out: UILabel!
    @IBOutlet weak var diagonal1: UITextField!
    @IBOutlet weak var diagonal2: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Create the function to calculate the area.
    func areaOfKite(diagonal1: Double, diagonal2: Double) -> Double {
        return diagonal1 * diagonal2 / 2
    }
    
    // Outlet and function to calculate the area.
    @IBAction func calculate(_ sender: Any) {
        
        guard let givenDiagonal1 = diagonal1.text, givenDiagonal1 != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let givenDiagonal2 = diagonal2.text, givenDiagonal2 != "" else {
            out.text = "Required value not found!"
            return
        }
        
        guard let numericDiagonal1 = Double(givenDiagonal1) else {
            out.text = "Please enter a number!"
            return
        }
        
        guard let numericDiagonal2 = Double(givenDiagonal2) else {
            out.text = "Please enter a number!"
            return
        }
        
        out.text = "Area of Kite: \(areaOfKite(diagonal1: numericDiagonal1, diagonal2: numericDiagonal2))"
        
    }

}
