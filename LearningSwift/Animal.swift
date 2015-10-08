//
//  Animal.swift
//  LearningSwift
//
//  Created by Binary on 10/8/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

enum Satiety: Int {
    case Max = 100
    case Min = 0
    case Step = 5
}

enum AnimalKind {
    case Dog, Cat
    func info() -> String {
        switch self {
        case .Dog:
            return "🐶🐕"
        default:
            return ""
        }
    }
}

class Animal {

    var name: String
    
    var satiety: Int = 10 {
        didSet {
            if satiety > Satiety.Max.rawValue {
                satiety = Satiety.Max.rawValue
            } else if satiety < Satiety.Min.rawValue {
                satiety = Satiety.Min.rawValue
            }
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func eat() {
        satiety += Satiety.Step.rawValue
    }
    
    func run() {
        satiety -= Satiety.Step.rawValue
    }
    
    func isHungry() -> Bool {
        return Double(satiety) < Double(Satiety.Max.rawValue - Satiety.Min.rawValue) * 0.3
    }

    func sayHello() {
        if isHungry() {
            print("I'm hungry!")
        } else {
            print("Hello! I'm \(name)")
        }
    }
    
}

