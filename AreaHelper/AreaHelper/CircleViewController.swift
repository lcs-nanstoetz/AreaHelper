//
//  ViewController.swift
//  AreaHelper
//
//  Created by Anstoetz, Nick on 2019-10-24.
//  Copyright © 2019 Anstoetz, Nick. All rights reserved.
//

import UIKit

class CirlceViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var UsedRadius: UITextField!
    @IBOutlet weak var AreaOfCirlce: UILabel!
    

    // MARK: Methods
    //Runs as soon as the view becomes visible to users
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Get area of a circle
    func CalculatAreaOfCircle(UsedRadius: Double) -> Double {
        return Double.pi * pow(UsedRadius, 2)
    }
    
    // Respond to button press and do the calculation
    @IBAction func calculateArea(_ sender: Any) {
        
        // 1. Get the strings from the UITextFields
        let radiusAsString = UsedRadius.text!

        // 2. Convert the strings into Double data types
        let radiusAsDouble = Double(radiusAsString)!
        
        // 3. Call the function
        let result = CalculatAreaOfCircle(UsedRadius: radiusAsDouble)
        
        // 4. Report the result
        AreaOfCirlce.text = "The area is \(result)"
        
        
        
    }
    
}

