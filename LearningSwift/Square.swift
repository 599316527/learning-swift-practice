//
//  Square.swift
//  LearningSwift
//
//  Created by Binary on 10/9/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

class Square: Sharp {
    var name: String {
        get {
            return "Square"
        }
    }
    
    var width: Double
    var height: Double
    init (width: Double, height: Double?) {
        self.width = width
        self.height = height ?? width
    }
    
    var perimeter: Double {
        get {
            return (width + height) * 2
        }
        set {
            width = newValue / 4
            height = width
        }
    }
    
    var area: Double {
        get {
            return width * height
        }
        set {
            width = sqrt(newValue)
            height = width
        }
    }
    
    func describe() {
        print(name,
            "Width: \(Util.accurateToTwoPlacesOfDecimals(width))mm",
            "Height: \(Util.accurateToTwoPlacesOfDecimals(height))mm",
            "Perimeter: \(Util.accurateToTwoPlacesOfDecimals(perimeter))mm",
            "Area: \(Util.accurateToTwoPlacesOfDecimals(area))mm²",
            separator: " | ")
    }
    
    
}