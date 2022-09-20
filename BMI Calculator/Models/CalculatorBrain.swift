//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Giorgi Samkharadze on 21.09.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue () -> String {
    
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
         let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit s a fiddle", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "CARDIO NOW!!!!!", color: UIColor.red)
        }
        
    }
    func getAdvice () -> String {
        return bmi?.advice ?? "0"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
