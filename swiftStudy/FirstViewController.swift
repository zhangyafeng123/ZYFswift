//
//  FirstViewController.swift
//  Test
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo1()
        
    }
    func demo1() -> () {
        
        let array:[[String : Any]] = [
            ["name":"fengfeng","age":18],
            ["name":"xiaoming","age":28]
        ]
        for dict in array {
            print(dict)
        }
        
        //便利字典
        let dict1 = ["name" : "gege","age" : 18] as [String : Any]
        
        for e in dict1 {
            print(e)
        }
        for (k,v) in dict1 {
            print("\(k) \(v)")
        }
        
        //字典合并
        var dictA = ["name" : "gege","age" : 18] as [String : Any]
        let dictB = ["height" : 180, "width" : 90]
        
        for e in dictB {
            dictA[e.key] = dictB[e.key]
        }
        print(dictA)
        
    }

    

}
