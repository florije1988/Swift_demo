//
//  ViewController.swift
//  Swift_demo
//
//  Created by boqing fu on 15/4/30.
//  Copyright (c) 2015 ___florije___. All rights reserved.
//


import UIKit
import Foundation


class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var greeting: String = "Hello"
        var greeting = "Hello"
//        let greeting = "Hello"

//        greeting = 3
        greeting = greeting + " World"
        greeting.append(Character("!"))
        var demo_str = greeting.stringByAppendingString("fuboqing")
//        var greeting = "hello".stringByAppendingString(" world")

        println(greeting)
        println(demo_str)

        var radius: Int = 4
        let pi: Double = 3.14159
        let million = 1_000_000

        var area = Double(radius) * Double(radius) * pi

        let minValue = UInt8.min; println(minValue)
        let maxValue = UInt8.max; println(maxValue)

        println("欢迎消息是：\(greeting)")  // 很神奇的一个东西哈。

        let welcomeMessage = "Hello world."
        NSLog("欢迎光临: %@.", "xiaoqigui")  // 好神奇的一个东西，怎么都觉得不是很对的感觉。

        var red: Double, green, blue: Double

        /*var anInt:Int = 10
        var aChar:Character = "a"
        var anotherChar:Character = anInt + aChar
        var anotherInt:Int = anotherChar*/

        /*let cannotBeNegative: UInt8 = -1
        let overFlow: Int8 = Int8.max + 1*/

        let twoThousand: UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)
        println(twoThousandAndOne)

        let three = 3  //Int
        let pointOneFourOneFiveNine = 0.14159  //Double
        let pi_2 = Double(three) + pointOneFourOneFiveNine
        println(pi_2)

        let isPasswordCorrect: Bool = false
        let areYouAreAChinese = true

        if isPasswordCorrect {
            println("welcome!")
        } else {
            println("sorry!")
        }

        let value_bool = 1
        if value_bool == 1 {
            println("value_bool is 1")
        }

        var emptyString = ""
        var anotherEmptyString = String()
        if emptyString == anotherEmptyString && isEmpty(emptyString) {
            println("empty")
        }

        emptyString += "not empty"
        println(emptyString)

        let exclamationMark: Character = "!"
        emptyString.append(exclamationMark)
        println(emptyString)

        let stringValue = "Hello, World!"
        println("stringValue 含有 \(count(stringValue)) 个字符。")

        let multiplier = 3
        let message = "\(multiplier) 的2.5倍是:\(Double(multiplier) * 2.5)"
        println(message)

        let student_score = ["baelish": 100, "tyrion": 60]
//        println("score is \(student_score["baelish"])")
        var score = student_score["baelish"]
        println("score is \(score)")

        let quotation = "I like programming"
        let sameQuotation = "I like programming"
        if quotation == sameQuotation {
            println("same")
        } else {
            println("not same")
        }
        let eAcuteQuestion = "caf\u{E9}"
        let combinedEAcuteQuestion = "caf\u{65}\u{301}"
        if eAcuteQuestion == combinedEAcuteQuestion {
            println("same")
        }

        let http404Error = (404, "Not Found")
        let (statusCode, statusMessage) = http404Error
        println("statusCode is : \(statusCode)")
        println("statusMessage is : \(statusMessage)")

        println("statusCode is : \(http404Error.0)")
        println("statusMessage is : \(http404Error.1)")

        let http200Status = (statusCode: 200, description: "OK")
        println("statusCode is : \(http200Status.statusCode)")

        let possibleNumber = "123"
        let convertedNumber = possibleNumber.toInt()

        let letoptionalInt: Int? = 866
        var varoptionalString: String? = "Hello, world"

        if (convertedNumber != nil) {
            println("\(possibleNumber)含有Int型值：\(convertedNumber!)")

        } else {
            println("\(possibleNumber)不能转换为Int型.")

        }

        if let actualNumber = possibleNumber.toInt() {
            println("\(possibleNumber)含有Int型值：\(actualNumber)")
        } else {
            println("\(possibleNumber)不能转换为Int型.")
        }

        let possibleString: String? = "one optional string"
        println(possibleString!)

        let assumedString: String! = "implicitly unwrapped optional"
        println(assumedString)

        let age = -1
//        assert(age >= 0, "age left 0!")

        var shoppingList: Array<String> = ["Eggs", "Milk"]
        var demoList = ["Eggs", 123, 12.5, true]
        for item in demoList {
            println("demoList item is: \(item)")
        }

        println("shoppingList has count: \(shoppingList.count)")

        println("shoppingList is empty: \(shoppingList.isEmpty)")

        shoppingList.append("Flour")
        shoppingList += ["Powder"]

        shoppingList += ["xiaofu", "xiaozhang"]
        println("shoppingList has count: \(shoppingList.count)")

        var firstItem = shoppingList[0]
        println("first of shoppingList is \(firstItem)")

        shoppingList[0] = "Six eggs"

        shoppingList[3 ... 5] = ["Bananas", "Apples"]

        shoppingList.insert("xiaoqigui", atIndex: 0)
        let mapleSyrup = shoppingList.removeAtIndex(0)
        let apples = shoppingList.removeLast()

        for item in shoppingList {
            println(item)
        }
        for (index, value) in enumerate(shoppingList) {
            println("Item \(value), index \(index)")
        }

        for (var (index, value)) in enumerate(shoppingList) {
            println("Item \(value), index \(index)")
        }

        var someInts = [Int]()
        println("someInts has count: \(someInts.count)")

        someInts.append(3)
        someInts = []

        var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
        var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
        var sixDoubles = threeDoubles + anotherThreeDoubles

        var games: [String:String] = ["name": "fuboqing", "course": "shuxue"]
        var game2 = ["name": "fuboqing", "course": "shuxue"]
        println(games)

        println("game count: \(games.count)")
        println("game is empty: \(games.isEmpty)")
        games["time"] = "2014:11:29"

        let airports = ["TYO": "Tokyo", "LHR": "London Heathrow"]
        for (airportCode, airportName) in airports {
            println("\(airportCode) : \(airportName)")
        }

        var namesOfInteger = [Int: String]()
        namesOfInteger[16] = "sixteen"
        namesOfInteger = [:]

        struct Sword {
            var width: Float
            let name: String
            func description() {
                println("my name is \(name) and width is \(width)")
            }
        }

        var sword: Sword = Sword(width: 1.5, name: "xiaoqigui")
        sword.description()

        enum SomeEnumeration {
            // meiju
        }

        enum Platform {
//            case Windows
//            case Linux
//            case MacOs
            case Windows, Linux, MacOs
        }

        var myPlatform = Platform.Windows
        myPlatform = .Linux  // 很神奇对不对

        switch myPlatform {
        case .Windows:
            println("Windows")
        case .Linux:
            println("Linux")
        case .MacOs:
            println("MacOs")
        default:
            println("Nothing")
        }

        enum Password {
            case DigitPassword(Int)
            case StringPassword(String)
        }

        var password = Password.DigitPassword(4078385)
        password = Password.StringPassword("admin")

        switch password {
        case .DigitPassword(let digitPwd):
            println("\(digitPwd)")
        case .StringPassword(let strPwd):
            println("\(strPwd)")
        }

        enum ASCIIControlCharacter: Character {
            case Tab = "\t"
            case LineFeed = "\n"
            case CarriageReturn = "\r"
        }

        enum Planet: Int {
            case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
        }

        let earthsOrder = Planet.Earth.rawValue
        println(earthsOrder)

        let possiblePlanet = Planet(rawValue: 7)

        let positionToFind = 3
        if let somePlanet = Planet(rawValue: positionToFind) {
            switch somePlanet {
            case .Earth:
                println("earth")
            default:
                println("other planet")
            }
        } else {
            println("nothing on this position")
        }

        println("3 + 2 = \(3 + 2)")

        var hello = "you hao "
        var oldcoder = "lao ma"
        var char: Character = "!"
        hello = hello + oldcoder
        hello.append(char)
        println("\(hello)")
//        var tmp = char + char
//        println("\(tmp)")  // 这是错误的

        var zero = 2
//        println("(3 &/zero 当 zero=2) = \(3 &/ zero)")

        var baseValue: UInt8 = UInt8.max
        println("baseValue top overflow value is: \(baseValue &+ 1)")
        baseValue = UInt8.min
        println("baseValue bottom overflow value is: \(baseValue &- 1)")

        for index in 10 ... 15 {
            println("bi qu jian: \(index)")
        }

        for index in 10 ..< 15 {
            println("kai qu jian: \(index)")
        }

        var a: String? = "God in heart"
        var b: String?
        var d = "No God in heart"
        var e = b ?? d
        var f = d ?? b
        var g = a ?? d
        var h = b ?? a
        println("e = b??d e = \(e)")
        println("f = d??b f = \(f)")
        println("g = a??d g = \(g)")
        println("h = b??a h = \(h)")

        // just comment

        var singers = ["1": "fuboqing", "2": "xiaoqigui"]
        for singer in singers {
            println("singer: \(singer.0) to sing: \(singer.1)")
        }

        var songs = [String](singers.values)
        for songNum in 0 ..< songs.count {
            println("song: \(songs[songNum])")
        }

        for var index = 0; index < songs.count; ++index {
            println("song: \(songs[index])")
        }

        var oldCoder = Peoples()
        if oldCoder.isEnough() {
            println("success!")
        } else {
            println("no success!")
        }

        var youngCoder = SimplePeople()
        youngCoder.pray()


    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


class Peoples {
    var failCount: Int = 0
    func increment() {
        failCount++
    }

    func incrementBy(amount: Int) {
        failCount += amount
    }

    func reset() {
        failCount = 0
    }

    func isEnough() -> Bool {
        if failCount > 1000 {
            return true
        } else {
            return false
        }
    }
}
