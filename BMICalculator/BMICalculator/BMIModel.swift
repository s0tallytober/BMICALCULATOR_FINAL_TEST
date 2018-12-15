//
//  BMIModel.swift
//  BMICalculator
//
//  Created by Venkatesh K on Saka 1940-09-22.
//  Copyright © 1940 Saka Venkatesh K. All rights reserved.
//

import Foundation
class BMIModel
{
var height:Double
var weight:Double
    init(height:Double,weight:Double){
        self.height=height
        self.weight=weight
}
    func bmi()->Double{
        
        
            return weight/(height*height)
    }
}

