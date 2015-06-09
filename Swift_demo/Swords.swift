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

