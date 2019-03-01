//
//  ViewController.swift
//  BullsEye
//
//  Created by Pham N. Thach on 2019/02/27.
//  Copyright © 2019 pntttt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert(){
        let message = "The value of the slider is now: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        
        let alert = UIAlertController(title: "Hello Swift :))", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        let rouderValue = slider.value.rounded()
        currentValue = Int(rouderValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        UpdateLabel()
    }
    
    func UpdateLabel() {
        targetLabel.text = String(targetValue)
    }
    
}

