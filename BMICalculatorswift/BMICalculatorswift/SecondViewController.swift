//
//  SecondViewController.swift
//  BMICalculatorswift
//
//  Created by Venkatesh K on Saka 1940-09-22.
//  Copyright © 1940 Saka Venkatesh K. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel1: UILabel!
    @IBOutlet weak var heightTextfeild1: UITextField!
    @IBOutlet weak var weightTextFeild1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func computeBMI1(_ sender: Any)
        {
            let h1 = Double(heightTextfeild1.text!)
            let w1 = Double(weightTextFeild1.text!)
            let bmiM1 = BMIModel(height:h1!, weight:w1!)
            resultLabel1.text=String(bmiM1.bmi())
            let bmivalue1 = bmiM1.bmi()
            if
                ( bmivalue1 < 16)
            {
                print("severe Thinness")
            }
            else  if
                (bmivalue1 >= 16 || bmivalue1 <= 17)
            {
                print("moderate Thinness")
            }
                
            else  if (bmivalue1 >= 17 || bmivalue1 <= 18.5)
            {
                
                print("Mild Thinness")
            }
            else  if (bmivalue1 >= 18.5 || bmivalue1 <= 25
                )
            {
                print("normal")
            }
            else  if (bmivalue1 >= 25 || bmivalue1 <= 30)
            {
                print("Overweight")
            }
            else  if (bmivalue1 >= 30 || bmivalue1 <= 35
                )
            {
                print("Obese Class 1")
            }
            else  if (bmivalue1 >= 35 || bmivalue1 <= 40)
            {
                print("Obese Class 2")
            }
            else  if (bmivalue1 > 40)
            {
                print("Obese Class 2")
            }
            
            
        }
        
    }
    


