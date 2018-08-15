//
//  ZYFPerson.swift
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class ZYFPerson: NSObject {
    var name: String
    
    override init() {
        print("person init")
        //分配空间设置初始值
        name = "fengfeng"
        
        super.init()
        
    }
    
    
}
