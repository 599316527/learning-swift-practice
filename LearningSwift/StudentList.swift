//
//  StudentList.swift
//  LearningSwift
//
//  Created by Binary on 10/9/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

enum Gender: Int {
    case Male = 1
    case Female, Hyper
    func describe() -> String {
        switch self {
        case .Male:
            return "Boys, Men 👬"
        case .Female:
            return "Girls, Women 👭"
        default:
            return "#%&^$*($^&$@&"
        }
    }
}

struct Person {
    var number: Int
    var name: String
    var gender: Gender
    var face: String
    var email: String
}

struct Gruppe {
    var name: String
    var advisor: Person
    var students: [Person]
    
    private func getStudentByNumber(number: Int) -> Person? {
        for student in students {
            if (student.number == number) {
                return student
            }
        }
        return nil
    }
    
    private func getStudentIndexByNumber(number: Int) -> Int {
        for (index, student) in students.enumerate() {
            if (student.number == number) {
                return index
            }
        }
        return -1
    }
    
    subscript(number: Int) -> Person? {
        get {
            return getStudentByNumber(number)
        }
        set(person) {
            let index: Int = getStudentIndexByNumber(number)
            if index < 0 && person != nil {
                students.append(person!)
            } else {
                students[index] = person!
            }
        }
    }
}








