//
//  ZYFPerson.swift
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

/**
 1.给自己的属性分配空间并且设置初始值
 2.调用父类的构造函数之前，需要先给本类额的属性设置初始值
 3.调用父类的·构造函数·，给弗雷的属性分配空间设置初始值
    NSObject 没有属性， 只有一个成员变量 ‘isa’
 4.如果重载了构造函数，并且没有实现父类 init 方法，系统不再提供 init() 构造函数(默认是会有的!)
 */
class ZYFPerson: NSObject {
    var name: String
    //重写
    override init() {
        
        print("person init")
        
        //分配空间设置初始值
        name = "fengfeng"
        
        super.init()
        
    }
    //重载，函数名相同，但是参数和个数不同
    init(name: String) {
        //使用参数的name赋值给属性
        self.name = name

        //调用父类的构造寒素
        super.init()
    }
    
    
}
