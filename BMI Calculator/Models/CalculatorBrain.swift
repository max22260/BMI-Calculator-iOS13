//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nagy on 01/02/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmiValue :BMI?
    
    
    
    mutating func claculateBMI(_ height : Float ,_ wieght : Float ) {
        
        let bmi = Float(Float(wieght/pow(height,2)))
        
        
        if bmi < 18.5 {
            
            bmiValue = BMI(value: bmi, advice: "Eat more pies !", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
            
        }else if bmi < 24.9 {
            
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle !", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        
        }else{
    
            bmiValue = BMI(value: bmi, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    //    bmiValue = BMI(value: bmi, advice: <#T##String#>, color: <#T##UIColor#>)
        
    }
    
    func getBmiValue() -> String {
        
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
    
    func getBmiColor() -> UIColor {
        
        return bmiValue?.color ?? #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
        
        
        func getBmiAdvice() -> String {
            
            return bmiValue?.advice ?? "NO Advice "
        }
    
    
    
}
