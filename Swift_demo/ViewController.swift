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
        if quotation == sameQuotation{
            println("same")
        } else {
            println("not same")
        }
        let eAcuteQuestion = "caf\u{E9}"
        let combinedEAcuteQuestion = "caf\u{65}\u{301}"
        if eAcuteQuestion == combinedEAcuteQuestion {
            println("same")
        }


    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
