//
//  FourViewController.swift
//  Test
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {

    /// option + command + /
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
        btn.setTitle("come on", for: UIControlState.normal)
        btn.sizeToFit()
        btn.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: UIControlState.normal)
        btn.center = view.center
        view.addSubview(btn)
        
//        let v = demo1(num1: 1, num2: 2)
//        print(v)
//
//        let w =  demo2(1, 1)
//        print(w)
        
//        print(demo3(x: 1, y: 4))
//        print(demo3())
//        print(demo3(x: 40, y: 40))
//        print(demo3(x: 10))
        
        let f = demo3
        print(f(20,40))
    }
    
    /**
     闭包
     1.提前准备好的代码
     2.在需要的时候执行
     3.可以当做参数传递
    */
    
    
    //通过给参数设置默认值，在调用的时候，可以任意组合函数，如果不指定的，就是用默认值
    func demo3(x: Int = 1, y: Int = 2) -> Int  {
        return x + y
    }
    
    // 外部参数如果使用 _,在外部调用函数时，会忽略形参的名字
    
    func demo1(num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }
    func demo2(_ x: Int, _ y: Int) -> Int {
        
        //在 Swift 中， _ 就是忽略任意不感兴趣的内容
        //for _ in 0..<10 如果用不到就用 _ 替代
        for _ in 0..<10 {
            print("hello world!")
        }
        
        return x + y
    }
    
    

}
