//
//  ViewController.swift
//  AppTrafficLight
//
//  Created by Vlad on 30.4.23..
//

import UIKit

enum lightNow {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var swithLightButton: UIButton!
    
    private var ligftNow = lightNow.red
    private let colorAlfaOn: CGFloat = 1
    private let colorAlfaOff: CGFloat = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = colorAlfaOff
        yellowLightView.alpha = colorAlfaOff
        greenLightView.alpha = colorAlfaOff
        
        swithLightButton.layer.cornerRadius = 10
    }
    
    /* viewWillLayoutSubviews загружается раньше чем viewDidLoad В viewWillLayoutSubviews методе размеры корректные, а view размещены правильно — можно подвязываться к размерам корневой view. подробнее тут: https://sparrowcode.io/ru/tutorials/uiviewcontroller-lifecycle */
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
        
    }
    
    
    @IBAction func tappedSwitchLightButton() {
            swithLightButton.setTitle("NEXT", for: .normal)
        
        switch ligftNow {
        case .red:
            redLightView.alpha = colorAlfaOn
            greenLightView.alpha = colorAlfaOff
            ligftNow = .yellow
        case .yellow:
            yellowLightView.alpha = colorAlfaOn
            redLightView.alpha = colorAlfaOff
            ligftNow = .green
        case .green:
            greenLightView.alpha = colorAlfaOn
            yellowLightView.alpha = colorAlfaOff
            ligftNow = .red
        }
    }
}

