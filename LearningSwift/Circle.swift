//
//  Circle.swift
//  LearningSwift
//
//  Created by Binary on 10/9/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

class Circle: Sharp {
    
    var name: String {
        get {
            return "Circle"
        }
    }
    
    var radius: Double
    
    init (radius: Double) {
        self.radius = radius
    }
    
    var perimeter: Double {
        get {
            return M_PI * radius * 2
        }
        set {
            radius = newValue / M_PI / 2
        }
    }
    
    var area: Double {
        get {
            return M_PI * radius * radius
        }
        set {
            radius = sqrt(newValue / M_PI)
        }
    }
    
    func describe() {
        print(name, "Radius: \(radius)mm", "Perimeter: \(perimeter)mm", "Area: \(area)mm²", separator: " | ")
    }
}