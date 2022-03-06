//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anastasiia Korshina on 01.03.2022.
//

import UIKit

enum Lights {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLigthView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var currentLight = Lights.red
    var lightIsOn: CGFloat = 1
    var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLigthView.layer.cornerRadius = greenLigthView.frame.width / 2
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLigthView.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("Next", for: .normal)
        }
                
        switch currentLight {
        case .red:
            redLightView.alpha = lightIsOn
            greenLigthView.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowLightView.alpha = lightIsOn
            redLightView.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenLigthView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            currentLight = .red
        }
        
    }
    
}

