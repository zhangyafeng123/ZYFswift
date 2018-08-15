//
//  ZYFEightViewController.swift
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class ZYFEightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let p = ZYFStudent()
//        print(p.name + p.no)
        
//        let p1 = ZYFPerson(name: "fengfeng111")
//        print(p1)
//        let s = ZYFStudent(name: "fengfeng", no: "001")
//        print(s)
        let p = ZYFPerson1(dict: ["name" : "fengfeng","age" : 100])
        print(p.name,p.age)
        
    }


}
