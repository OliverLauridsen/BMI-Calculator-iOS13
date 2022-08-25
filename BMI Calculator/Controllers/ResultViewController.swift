//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Oliver Lauridsen on 25/08/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var BMIValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    @IBOutlet var resultsBackground: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = BMIValue
        adviceLabel.text = advice
        resultsBackground.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
