//
//  TrafficLightViewController.swift
//  HelloWorld
//
//  Created by Тимур Турлыкин on 23.04.2023.
//

import Foundation
import UIKit

enum CurrentLight {
    case red, yellow, green
}



class TrafficLightViewController: UIViewController {
    
    @IBOutlet weak var RedCircle: UIView!
    
    @IBOutlet weak var YelowCircle: UIView!
    
    @IBOutlet weak var GreenCircle: UIView!
    
    @IBOutlet weak var StartButton: UIButton!
    
    var currentLight = CurrentLight.red
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RedCircle.layer.cornerRadius = 60
        YelowCircle.layer.cornerRadius = 60
        GreenCircle.layer.cornerRadius = 60
        StartButton.layer.cornerRadius = 20
        
        RedCircle.alpha = lightOff
        YelowCircle.alpha = lightOff
        GreenCircle.alpha = lightOff
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeColor(_ sender: Any) {
        StartButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            GreenCircle.alpha = lightOff
            RedCircle.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            RedCircle.alpha = lightOff
            YelowCircle.alpha = lightOn
            currentLight = .green
        case .green:
            GreenCircle.alpha = lightOn
            YelowCircle.alpha = lightOff
            currentLight = .red
        }
        
        
        
    }
    

    
    
    
}

