//
//  ZYFStudent.swift
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class ZYFStudent: ZYFPerson {
    var no: String
    //'重写' perosn 的构造函数弗雷德方法不能满足需求
    override init() {
        print("student init")
        no = "001"
        super.init()
    }
    
}
