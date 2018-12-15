//
//  ViewController.swift
//  BMICalculator
//
//  Created by Venkatesh K on Saka 1940-09-22.
//  Copyright © 1940 Saka Venkatesh K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var
    resultLabel: UILabel!
    @IBOutlet weak var
    weightTextFeild: UITextField!
    @IBOutlet weak var
    heightTextFeild: UITextField!
    
    @IBOutlet weak var conditionresultLabel: UILabel!
    @IBAction func nameTextFeild(_ sender: UITextField) {
    }
    
    @IBAction func ageTextField(_ sender: UITextField) {
    }
    
    @IBAction func genderTextField(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.conditionresultLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func computeBMI(_ sender: Any) {
        let h = Double(heightTextFeild.text!)
        let w = Double(weightTextFeild.text!)
        let bmiM = BMIModel(height:h!, weight:w!)
        
        resultLabel.text=String(bmiM.bmi())
        let bmivalue = bmiM.bmi()
        if
            ( bmivalue < 16)
        {
            self.conditionresultLabel.text = "Severe Thinness"
        }
        else  if
            (bmivalue >= 16 || bmivalue <= 17)
        {
            self.conditionresultLabel.text = "Moderate Thinness"
        }
            
        else  if (bmivalue >= 17 || bmivalue <= 18.5)
        {
            
            self.conditionresultLabel.text = "Mild Thinness"
        }
        else  if (bmivalue >= 18.5 || bmivalue <= 25
            )
        {
            self.conditionresultLabel.text = "Normal"
        }
        
        else  if (bmivalue >= 25 || bmivalue <= 30)
        {
    self.conditionresultLabel.text = "Overweight"
    }
        
        else  if (bmivalue >= 30 || bmivalue <= 35)
            
        {
           self.conditionresultLabel.text = "Obese class1"
        }
        else  if (bmivalue >= 35 || bmivalue <= 40)
        {
           self.conditionresultLabel.text = "Obese class2"
        }
        else  if (bmivalue > 40)
        {
            self.conditionresultLabel.text = "Obese class3"
        }
        self.conditionresultLabel.isHidden = false
        
    }
        
}




