//
//  ViewController.swift
//  AppTrafficLight
//
//  Created by Vlad on 30.4.23..
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var swithLightButtonn: UIButton!
    
    private let colorAlfaOn = 1
    private let colorAlfaOff = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = colorAlfaOff
        yellowLightView.alpha = colorAlfaOff
        greenLightView.alpha = colorAlfaOff
        swithLightButtonn.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
        print(redLightView.frame.width)
        
    }


    @IBAction func tappedLightButton() {
        redLightView.alpha = CGFloat(colorAlfaOn)
    }
    
    
}

