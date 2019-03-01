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
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var roundLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        newGame()
    }

    @IBAction func showAlert(){
        
        let difference: Int = abs(currentValue - targetValue)
        var points = 100 - difference
        
        
        let title: String
        if difference == 0 {
            title = "Pefect!!!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        score += points
        
        let message = "You scored \(points) points"
        
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        let rouderValue = slider.value.rounded()
        currentValue = Int(rouderValue)
    }
    
    @IBAction func newGame() {
        score = 0
        round = 0
        startNewRound()
    }
    
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        UpdateLabel()
    }
    
    func UpdateLabel() {
        targetLabel.text = String(targetValue)
        scoreLable.text = String(score)
        roundLabel.text = String(round)
    }
    
}

