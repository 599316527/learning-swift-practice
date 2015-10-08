//
//  Dog.swift
//  LearningSwift
//
//  Created by Binary on 10/9/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

class Dog: Animal {
    var kind:AnimalKind = AnimalKind.Dog
    
    func getKind() -> String {
        return kind.info()
    }
    
    override func sayHello() {
        if isHungry() {
            print("Wuwuwuwuwu")
        } else {
            print("WangWangWang")
        }
    }
}
