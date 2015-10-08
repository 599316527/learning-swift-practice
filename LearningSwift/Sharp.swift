//
//  Sharp.swift
//  LearningSwift
//
//  Created by Binary on 10/9/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

protocol Sharp {
    var name: String { get }
    
    var perimeter: Double { get set }
    var area: Double {get set}
    
    func describe()
}
