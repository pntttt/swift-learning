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
    
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        let rouderValue = slider.value.rounded()
        currentValue = Int(rouderValue)
    }

    @IBAction func showAlert(){
        let message = "The value of the slider is now: \(currentValue)"
        
        
        let alert = UIAlertController(title: "Hello Swift :))", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        let rouderValue = slider.value.rounded()
        currentValue = Int(rouderValue)
    }
    
}

