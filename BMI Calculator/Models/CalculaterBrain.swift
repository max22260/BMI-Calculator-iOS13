//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Nagy on 01/02/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//
import UIKit


struct CalculatorBrain {
    
    var bmiValue :Float?
    
    
    
    mutating func claculateBMI(_ height : Float ,_ wieght : Float ) {
        
        bmiValue = Float(Float(wieght/pow(height,2)))
        
    }
    
    func getBmiValue() -> String {
        
        return String(format: "%.1f", bmiValue ?? 0.0)
    }
    
    
    
}
