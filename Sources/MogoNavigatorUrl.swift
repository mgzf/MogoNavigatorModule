//
//  MogoNavigatorUrl.swift
//  MogoNavigatorModule
//
//  Created by song on 2017/8/11.
//  Copyright © 2017年 song. All rights reserved.
//

import UIKit
import DeeplinkNavigator

let MogoSchemeL:String = "MG://app"

let MogoTextViewControllerURL:String = "\(MogoSchemeL)/TextViewController"

open class MogoNavigatorUrl: NSObject {
    
    open class func reg(){
        Navigator.scheme = MogoSchemeL
        if let URLNavigable = getClassWitnClassName(bundle:"MogoRenter_Wish_iOS", forClass: "TextViewController") as? DeeplinkNavigable.Type{
            Navigator.map(MogoTextViewControllerURL, URLNavigable)
        }
    }
}

////获取工程的名字
//fileprivate func getBundleName() -> String{
//    var bundlePath = Bundle.main.bundlePath
//    bundlePath = bundlePath.components(separatedBy: "/").last!
//    bundlePath = bundlePath.components(separatedBy: ".").first!
//    return bundlePath
//}

//通过类名返回一个AnyClass
fileprivate func getClassWitnClassName(bundle bundleName:String,forClass className:String) ->AnyClass?{
    if let classType = NSClassFromString(className)  {
        return classType
    }
    let type = bundleName + "." + className
    return NSClassFromString(type)
}
