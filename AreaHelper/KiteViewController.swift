//
//  ViewController.swift
//  AreaHelper
//
//  Created by Maxwell Lu on 2019-10-16.
//  Copyright © 2019 Maxwell Lu. All rights reserved.
//

import UIKit

class KiteViewController: UIViewController {
    
    @IBOutlet weak var out: UILabel!
    @IBOutlet weak var diagonal1: UITextField!
    @IBOutlet weak var diagonal2: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func areaOfKite(diagonal1: Double, diagonal2: Double) -> Double {
        
        return diagonal1 * diagonal2 / 2
        
    }
    
  
        
        
    @IBAction func calculate(_ sender: Any) {
        
        let givenDiagonal1 = diagonal1.text!
        let givenDiagonal2 = diagonal2.text!
        let numericDiagonal1 = Double(givenDiagonal1)!
        let numericDiagonal2 = Double(givenDiagonal2)!
        
        out.text = "Area of Kite: \(areaOfKite(diagonal1: numericDiagonal1, diagonal2: numericDiagonal2))"
        
    }

        
    
    
    
    
    
    
        
        
}
    



