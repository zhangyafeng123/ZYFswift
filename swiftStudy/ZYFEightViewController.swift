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
        
        let p = ZYFStudent()
        print(p.name + p.no)
        
        let p1 = ZYFPerson(name: "fengfeng111")
        print(p1)
    }


}
