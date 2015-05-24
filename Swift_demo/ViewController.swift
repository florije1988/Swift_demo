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

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
