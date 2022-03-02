//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anastasiia Korshina on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLigthView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var redLightIsOn = false
    var yellowLightIsOn = false
    var greenLightIsOn = false
    var buttonTappedFirst = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLigthView.layer.cornerRadius = 60
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLigthView.alpha = 0.3
        
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonPressed() {
        if buttonTappedFirst {
            buttonTappedFirst = false
            startButton.setTitle("NEXT", for: .normal)
            toggleColorOfLight(colorLightView: redLightView, isOn: redLightIsOn)
            redLightIsOn = true
        } else if redLightIsOn {
            toggleColorOfLight(colorLightView: redLightView, isOn: redLightIsOn)
            redLightIsOn = false
            toggleColorOfLight(colorLightView: yellowLightView, isOn: yellowLightIsOn)
            yellowLightIsOn = true
        } else if yellowLightIsOn {
            toggleColorOfLight(colorLightView: yellowLightView, isOn: yellowLightIsOn)
            yellowLightIsOn = false
            toggleColorOfLight(colorLightView: greenLigthView, isOn: greenLightIsOn)
            greenLightIsOn = true
        } else if greenLightIsOn {
            toggleColorOfLight(colorLightView: greenLigthView, isOn: greenLightIsOn)
            greenLightIsOn = false
            toggleColorOfLight(colorLightView: redLightView, isOn: redLightIsOn)
            redLightIsOn = true
        }
        
    }
    
    func toggleColorOfLight(colorLightView: UIView, isOn: Bool) {
        colorLightView.alpha = isOn ? 0.3 : 1
    }
    
}

