//
//  ViewController.swift
//  AreaHelper
//
//  Created by Anstoetz, Nick on 2019-10-24.
//  Copyright © 2019 Anstoetz, Nick. All rights reserved.
//

import UIKit
import AVFoundation

class RectangleViewController: UIViewController {
    
    


    @IBOutlet weak var resultOfRectangle: UILabel!
    @IBOutlet weak var Subwidth: UITextField!
    @IBOutlet weak var Sublength: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    // Respond to button press and do the calculation
  
    
    @IBAction func caluclateAreaOfRectangle(_ sender: Any) {
        
        guard let guessText = Subwidth.text, guessText != "" else {
            speak(message: "Bro, enter the value")
            return
        }
        //convert string to integer
        guard Int(guessText) != nil else {
            speak(message: "Hey, enter the number")
            return
        }
        guard let GuessText = Sublength.text, guessText != "" else {
            speak(message: "Bro, enter the value")
            return
        }
        //convert string to integer
        guard Int(GuessText) != nil else {
            speak(message: "Hey, enter the number")
            return
        }
        let result = areaOfRectangle(SubmittedLenght: Sublength.text!, SubmittedWidth: Subwidth.text!)
        
        resultOfRectangle.text = "The area is \(result)"
    

   
    }
    func areaOfRectangle(SubmittedLenght: String, SubmittedWidth: String) -> Double{
        let length = Double(SubmittedLenght)!
        let width = Double(SubmittedWidth)!
        return length * width
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
