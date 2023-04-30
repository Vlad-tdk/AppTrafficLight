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
        
    }


    @IBAction func tappedLightButton() {
    }
}

