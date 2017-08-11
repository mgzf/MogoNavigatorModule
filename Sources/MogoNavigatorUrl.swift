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
        if let URLNavigable = getClassWitnClassNmae("TextViewController") as? DeeplinkNavigable.Type{
            Navigator.map(MogoTextViewControllerURL, URLNavigable)
        }
    }
}

//获取工程的名字
fileprivate func getBundleName() -> String{
    var bundlePath = Bundle.main.bundlePath
    bundlePath = bundlePath.components(separatedBy: "/").last!
    bundlePath = bundlePath.components(separatedBy: ".").first!
    return bundlePath
}
//通过类名返回一个AnyClass
fileprivate func getClassWitnClassNmae(_ name:String) ->AnyClass?{
    if let classType = NSClassFromString(name)  {
        return classType
    }
    let type = getBundleName() + "." + name
    return NSClassFromString(type)
}
