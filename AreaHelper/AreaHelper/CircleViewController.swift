//
//  ViewController.swift
//  AreaHelper
//
//  Created by Anstoetz, Nick on 2019-10-24.
//  Copyright © 2019 Anstoetz, Nick. All rights reserved.
//

import UIKit
import AVFoundation

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
        // Obtain the guess value from text field
        guard let guessText = UsedRadius.text, guessText != "" else {
            speak(message: "Bro, enter the value")
            return
        }
        //convert string to integer
        guard Int(guessText) != nil else {
            speak(message: "Hey, enter the number")
            return
        }
        // 1. Get the strings from the UITextFields
        let radiusAsString = UsedRadius.text!

        // 2. Convert the strings into Double data types
        let radiusAsDouble = Double(radiusAsString)!
        
        // 3. Call the function
        let result = CalculatAreaOfCircle(UsedRadius: radiusAsDouble)
        
        // 4. Report the result
        AreaOfCirlce.text = "The area is \(result)"
        

       
        
    }
        func speak(message: String) {
            //Make an object named 'synthesizer' which is an instance of the
            //class AVSpeechSynthesizer
            let synthesizer = AVSpeechSynthesizer()
            
            
            
            //Make an object named 'utterance', which is an instance of the class
            //AVSpeechSynthesizer
            let utterance = AVSpeechUtterance(string: message)
            
            //Speak the message
            synthesizer.speak(utterance)
            
            print(message)
        }
}

