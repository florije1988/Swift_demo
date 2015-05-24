//
// Created by boqing fu on 15/5/6.
// Copyright (c) 2015 ___florije___. All rights reserved.
//

import Foundation

#if DEBUG
    func DLog(message: String){
        NSLog(message)
    }
#else
    func DLog(message: String){
        // release 模式下没有输出
    }
#endif
func ALog(message: String){
    NSLog(message)
}