//
//  BMIModel.swift
//  BMICalculatorswift
//
//  Created by Venkatesh K on Saka 1940-09-22.
//  Copyright © 1940 Saka Venkatesh K. All rights reserved.
//

import Foundation

class BMIModel
{
    var height:Double
    var weight:Double
    var height1:Double
    var weight1:Double
   
    init(height1:Double,weight1:Double){
        self.height1=height1
        self.weight1=weight1
    }
    
    func bmi1()->Double{
        return weight1*703/(height1*height1)
    }
}

