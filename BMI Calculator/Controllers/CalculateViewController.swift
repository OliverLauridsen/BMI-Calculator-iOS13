//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var BMIValue: String?
    var advice: String?
    var color: UIColor?
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        weightSlider.value = 100
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heightValue)m"
        
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weightValue = round(sender.value * 10) / 10.0
        weightLabel.text = "\(weightValue)kg"

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weightValue = (round(weightSlider.value * 10) / 10.0)
        let heightValue = (round(heightSlider.value * 10) / 10.0)
        
        calculatorBrain.calcuteBMI(weightValue: weightValue, heightValue: heightValue)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = calculatorBrain.getBMI()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

