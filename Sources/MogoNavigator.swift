//
//
//                        _____
//                       / ___/____  ____  ____ _
//                       \__ \/ __ \/ __ \/ __ `/
//                      ___/ / /_/ / / / / /_/ /
//                     /____/\____/_/ /_/\__, /
//                                      /____/
//
//                .-~~~~~~~~~-._       _.-~~~~~~~~~-.
//            __.'              ~.   .~              `.__
//          .'//                  \./                  \\`.
//        .'//                     |                     \\`.
//      .'// .-~"""""""~~~~-._     |     _,-~~~~"""""""~-. \\`.
//    .'//.-"                 `-.  |  .-'                 "-.\\`.
//  .'//______.============-..   \ | /   ..-============.______\\`.
//.'______________________________\|/______________________________`.
//
//
//  MogoNavogator.swift
//  MogoNavigatorModule
//
//  Created by song on 2017/8/10.
//  Copyright © 2017年 song. All rights reserved.
//

import UIKit
import DeeplinkNavigator

public protocol TextNavigator : class {
    
}

public extension TextNavigator {
    
    public func navigatorToDetail(){
        print("跳转TextViewController")
        Navigator.push(MogoTextViewControllerURL)
    }
    
}
