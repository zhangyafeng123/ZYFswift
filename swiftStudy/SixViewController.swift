//
//  SixViewController.swift
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class SixViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //尾随闭包
        //如果函数的最后一个参数是闭包，函数参数可以提前结束，最后一个参数直接使用 {} 包装闭包的代码
        loadData { (arr) in
            print(arr.count)
        }
    }
    
    func loadData(completion: @escaping ([String])->()) -> () {
        //将任务添加到队列中，制定执行任务的函数
        //翻译:队列调度任务(block/闭包)，以同步/异步 的方式进行执行
        DispatchQueue.global().async {
            print("耗时操作\(Thread.current)")
            //休眠
            Thread.sleep(forTimeInterval: 2.0)
            //获取数据
            let json = ["头条","新闻","八卦"]
            //主队列回调
            DispatchQueue.main.async {
                //执行回调
                completion(json)
            }
        }
        
    }


}
