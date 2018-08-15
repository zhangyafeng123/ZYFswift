//
//  ZYFPerson1.swift
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class ZYFPerson1: NSObject {
    //在需要的时候再创建
    var name: String?
    
    var age: Int = 0
    //如果设置成 private 属性/方法 禁止外部访问的
    private var title: String?
    
    init(dict: [String:Any]) {
        //保证对象已经完全初始化完成！
        super.init()
        //KVC的方法是OC的方法，**在运行时给对象发送消息**
        // 要求对象已经实例化完成!
        setValuesForKeys(dict)
        
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}
