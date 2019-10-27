//
//  ViewController.swift
//  AreaHelper
//
//  Created by Anstoetz, Nick on 2019-10-24.
//  Copyright © 2019 Anstoetz, Nick. All rights reserved.
//

import UIKit
import AVFoundation

class TriangleViewController: UIViewController {
    
    @IBOutlet weak var Subbase: UITextField!
    @IBOutlet weak var Subheight: UITextField!
    @IBOutlet weak var FinalAreaTriangle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CalculateAreaOfTriangle(_ sender: Any) {
        
        guard let guessText = Subbase.text, guessText != "" else {
            speak(message: "Bro, enter the value")
            return
        }
        //convert string to integer
        guard Int(guessText) != nil else {
            speak(message: "Hey, enter the number")
            return
        }
        guard let GuessText = Subheight.text, guessText != "" else {
            speak(message: "Bro, enter the value")
            return
        }
        //convert string to integer
        guard Int(GuessText) != nil else {
            speak(message: "Hey, enter the number")
            return
        }
        
    let result = FinalAreaTriangle(Submittedbase:Subbase.text!, Submittedheight: Subheight.text!)
        
    FinalAreaTriangle.text = "The area is \(result)"

    }
    
    func FinalAreaTriangle(Submittedbase: String, Submittedheight: String) -> Double{
        let base = Double(Submittedbase)!
        let height = Double(Submittedheight)!
        return height * base / 2
        
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


