//
//  Util.swift
//  LearningSwift
//
//  Created by Binary on 10/9/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

class Util {
    static func accurateToTwoPlacesOfDecimals(number: Double) -> Double {
        return round(number * 100) / 100
    }
}