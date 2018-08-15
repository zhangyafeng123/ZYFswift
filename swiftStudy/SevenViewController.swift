//
//  SevenViewController.swift
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class SevenViewController: UIViewController {
    
    var completionCallBack: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //weak只能修饰 var 不能修饰 let
        //weak 可能会被在运行时修改 -> 指向的对象一旦被释放，会被自动设置为 nil
        weak var weakSelf = self;
        demo {
            // ? 可选解包 - 如果self已经被释放，不会向对象发送 getter 的消息
            // ! 如果强行解包，self已经被释放，此时会报错
            print(weakSelf?.view)
        }
        //第二种写法
        //[weak self] 表示 {} 中的所有 self 都是弱引用，需要足以解包
        demo { [weak self] in
            print(self?.view)
        }
        //第三种不推荐使用，知道就好,跟__unsafe_unretained一样
        //如果被释放再次访问会出现野指针
        demo { [unowned self] in
            print(self.view)
        }
    }
    //尾随闭包用 escaping 修饰
    func demo(completion: @escaping ()->()) -> () {
        //使用属性记录闭包 -> self 对闭包引用了
        completionCallBack = completion
        DispatchQueue.global().async {
            print("耗时操作")
            
            Thread.sleep(forTimeInterval: 2)
            
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    deinit {
        print("我去了")
    }
   
}
