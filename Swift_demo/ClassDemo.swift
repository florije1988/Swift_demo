//
// Created by boqing fu on 15/6/23.
// Copyright (c) 2015 ___florije___. All rights reserved.
//

import Foundation

class Buddha {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class SimplePeople {
    var dream: String?
    var reality: String = ""
    var lover: SimplePeople?

    lazy var buddha = Buddha(name: "xiaofu")

    func pray() {
        println("you name is \(buddha.name)")
    }
}

class ComplexPeople {
    var appearance: String = ""
    var dream: String = ""
    var reality: String = ""
    var lover: ComplexPeople?

    var isHappy: Bool {
        get {
            if (dream != "" && dream == reality) || lover != nil || appearance == "so shuai" {
                return true
            } else {
                return false
            }
        }

        set(newIsHappy) {
            if newIsHappy == true {
                appearance = "so happy"
            } else {
                appearance = "no happy"
            }
        }
    }
}

