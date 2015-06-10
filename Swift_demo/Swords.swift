//
// Created by boqing fu on 15/6/10.
// Copyright (c) 2015 ___florije___. All rights reserved.
//

import Foundation

//定义结构

struct Sword {
    var length: Float
    var weight: Float
    var name: String

    func printDescription() {
        println("Sword[name: \(name), length: \(length), weight: \(weight)]")
    }
}

// 自定义Sword类型的加法

func +(left: Sword, right: Sword) -> Sword {
    return Sword(length: left.length + right.length, weight: left.weight + right.weight, name: "Big Sword")
}

func -(left: Sword, right: Sword) -> Sword {
    return Sword(length: left.length - right.length, weight: left.weight - right.weight, name: "Small Sword")
}

prefix func -(sword: Sword) -> Sword {
    return Sword(length: -sword.length, weight: -sword.weight, name: sword.name)
}

postfix func ++(inout sword: Sword) -> Sword {
    var oldSword = sword
    sword.length += 1.0
    sword.weight += 1.0
    return oldSword
}

func ==(left: Sword, right: Sword) -> Bool {
    return left.length == right.length && left.weight == right.weight
}

//var smallSword1 = Sword(length: 0.5, weight: 0.5, name: "Small Sword1")
//var smallSword2 = Sword(length: 1.0, weight: 1.0, name: "Small Sword2")
//
//var bigSword = smallSword1 + smallSword2
//
//smallSword1.printDescription()
//smallSword2.printDescription()
//
//bigSword.printDescription()
//
//var smallSword3 = bigSword - smallSword2
//
//smallSword3.printDescription()
//
//var newSword = smallSword3++
//smallSword3.printDescription()
//newSword.printDescription()
//
//(-smallSword2).printDescription()
//
//println("newSword equals to smallSword1? \({newSword == smallSword1 ? true: false}())")
//println("newSword3 equals to smallSword1? \({newSword3 == smallSword1 ? true: false}())")
