//
//  ViewController.swift
//  Test
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo8()
        //demo3(name: "fengfen", age: 18)
    }
    
    func demo1() -> () {
        let name1: String? = "fengfeng"
        let age: Int? = 10
        // if let 连用，判断对象的值是否为 nil
        // if var 连用，可以在 {} 内可以对值进行修改!
        if let nm = name1, let ag = age {
            //进入分支之后，name 和 age 一定有值，不需要强行解包
            // name 和 age 的作用域仅在 {} 中
            print(nm + String(ag))
        } else {
            print("name 或者 age 为 nil")
        }
    }
    
    /// 测试
    func demo2() -> () {
        let name1: String? = "fengfeng"
        let age: Int? = 10
        //guard let 守护/守卫
        //guard let 守护一定有值，没有值就直接返回
        guard let zname = name1, let zage = age else {
            print("姓名或者年龄为nil")
            return
        }
        //代码执行至此，name 和 age 一定有值
        //通常判断是否有值之后，会做具体的逻辑实现
        print(zname + String(zage))
    }
    
    
    func demo3(name: String?, age: Int?) -> () {
        
        //gurad let & if let 命名技巧
        
        if let name = name, let age = age {
            //非空的 name 和 age 仅在 {} 内有效
            print(name + "---" + String(age))
        }
        
        //使用同名的变量接收值，在后续使用的都是非空值，不需要解包
        guard let name = name, let age = age else {
            print("姓名或者年龄为nil")
            return
        }
        print(name + String(age))
    }
    
    //1.switch 可以针对任意类型的值进行分支，不再局限在整数
    //2.switch 一般不需要 block
    //3.switch 如果要多值，使用 `,`
    //4.所有的分支至少需要一条指令，如果什么都不干，才使用 break
    func demo4(num: String) {
        switch num {
        case "10","9":
            print("fengfeng")
        case "8":
            break
        default:
            print("xiaoming")
        }
    }
    
    
    func demo5() -> () {
        //反序便利
        for i in (0...10).reversed() {
            print(i)
        }
    }
    
    func demo6() -> () {
        let str = "fengfeng"
        
        print(str.lengthOfBytes(using: String.Encoding.utf8))
        
        print(str.characters.count)
        //as 类型转换
        let ocStr = str as NSString
        
        print(ocStr.length)
        
    }
    
    func demo7() -> () {
        let str = "fengfeng" as NSString
        let s1 = str.substring(with: NSMakeRange(2, 3))
        print(s1)
        
    }
    //数组便利
    func demo8()  {
        let array = ["fengfeng","xiaoming","huge"]
        
        for i in 0..<array.count {
            print(array[i])
        }
        
        for str in array {
            print(str)
        }
        
        for e in array.enumerated() {
            print(e)
        }
        
        for (n, c) in array.enumerated() {
            print("\(n): '\(c)'")
        }
        //反序便利
        for str1 in array.reversed() {
            print(str1)
        }
        //错误的反序
        for (n, c) in array.reversed().enumerated() {
            print("\(n): '\(c)'")
        }
        //正确的反序
        for (n, c) in array.enumerated().reversed() {
            print("\(n): '\(c)'")
        }
    }
    
    

}

