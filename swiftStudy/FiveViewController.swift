//
//  FiveViewController.swift
//  Test
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class FiveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // () -> ()
        let v = {
            print("hello")
        }
        v()
        
        //闭包中，参数、返回值，实现代码都是在 {} 中
        let v2 = { (x: Int) -> () in
            print(x)
        }
        v2(100)
        
        
    }


}
