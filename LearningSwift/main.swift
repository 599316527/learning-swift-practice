//
//  main.swift
//  LearningSwift
//
//  Created by Binary on 10/8/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

var worldCount:Int = 1

worldCount++

let plural:String = worldCount > 1 ?  "s" : ""

print("Hello, \(worldCount) World\(plural)!")

//var emptyString = ""
//if (emptyString.isEmpty) {
//    print("empty string")
//}
//emptyString = String()
//if (emptyString.isEmpty) {
//    print("empty string2")
//}

///////////////////////////////////////////////////////////////

print("----------------------------------------")
for i in 1...9 {
    for j in 1...i {
        print("\(j)x\(i)=\(i*j)", terminator: j < i ? "\t" : "")
    }
    print("")
}
print("----------------------------------------")

//let specialCharacters = "👏Chapping Hands|😕😢🐛!"
//for char in specialCharacters.characters {
//    print(char, "-", terminator: "")
//}
//print(
//    specialCharacters[specialCharacters.endIndex.predecessor()],
//    specialCharacters[specialCharacters.endIndex.predecessor().predecessor().predecessor()]
//)

///////////////////////////////////////////////////////////////

//let width: Double = 12.3
//let height: Double = 23.4
//print("\(width)cm x \(height)cm = \(width * height)cm²")
//
//let raduis: Double = 3.14
//let pi: Double = 3.14159265
//var volume: Double = raduis * pi * pi * pi * 4 / 3;
//print("球的體積是\(volume)")
//
//print((volume > 100 ? "Big" : "Small") + " enough")

///////////////////////////////////////////////////////////////

//var wishingList = [
//    "Microsoft Lumia 950",
//    "Apple iPhone 6s"
//]
//
//wishingList.append("Sony Ar7ii")
//
//print(wishingList[0], wishingList.count)
//print(wishingList[1...2])
//
//wishingList.insert("Lamp with Oxygen Generator", atIndex: 1)
//print(wishingList[1...2], wishingList.count, separator: "-")
//
//for item in wishingList {
//    print(item, terminator: " | ")
//}
//for (index, item) in wishingList.enumerate() {
//    print("\(index + 1): \(item)")
//}


var flagshipPhones: Set<String> = [
    "Microsoft Lumia 950XL",
    "Apple iPhone 6S",
    "Google Nexus 6P"
]

var phonesOnSale: Set<String> = [
    "Meizu XXXXX",
    "Xiaomi 4",
    "Apple iPhone 6S",
    "Google Nexus 6P"
]

print("Phones are both flagship and on sale: ", flagshipPhones.intersect(phonesOnSale));


///////////////////////////////////////////////////////////////

//var personalProfile:[String: String?] = [
//    "name": "Tony Stark",
//    "gender": nil,
//    "charactor": "Iron Man",
//    "portrait": "http://i0.sinaimg.cn/IT/cr/2010/0723/55408249.jpg",
//    "hobby": "Flying",
//    "hate": nil
//]
//
//personalProfile["hate"] = "Mission fail"
//
//for (key, item) in personalProfile {
//    print(key, item)
//}

///////////////////////////////////////////////////////////////

let year: Int = 2011
let month: Int = 11
let date: Int = 11
print("\(year)/\(month)/\(date)是\(year)年的第\(MyDateDiscountTool.getYearDay(date, month: month, year: year))天")

let beforeDays:Int = 111
var bDate: Int, bMonth:Int, bYear:Int
(bDate, bMonth, bYear) = MyDateDiscountTool.findTheDateBefore(days: beforeDays, from: date, month: month, year: year);
print("距离\(year)/\(month)/\(date)还有\(beforeDays)天的日期是\(bYear)/\(bMonth)/\(bDate)")

///////////////////////////////////////////////////////////////

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

print(Gender.Male.describe())


func suanming(name: String, age: Int, algorithm: (String, Int) -> Bool) -> String {
    return algorithm(name, age) ? "吉星高照😎" : "破财消灾😂"
}
print("算命结果:", suanming("Kyle He", age: 18, algorithm: {
    (name: String, age: Int) -> Bool in
    return name.characters.count > age / 3
}))


//let threeOfSpades = Card(rank: .Three, suit: .Spades)
//print(threeOfSpades.simpleDescription())


var animal: Animal = Animal(name: "Dola")
animal.sayHello()
for i in 0...3 {
    animal.eat()
}
animal.sayHello()

var dog: Dog = Dog(name: "Geogore")
dog.satiety = 999
dog.sayHello()
print(dog.getKind())

var circle = Circle(radius: 3)
circle.describe()
circle.perimeter = 9
circle.describe()
circle.area = 33
circle.describe()

var square = Square(width: 8, height: 6)
square.describe()
square.perimeter = 9
square.describe()
square.area = 33
square.describe()


