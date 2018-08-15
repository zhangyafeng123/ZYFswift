//
//  OCTest1ViewController.m
//  swiftStudy
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

#import "OCTest1ViewController.h"

@interface OCTest1ViewController ()
@property (nonatomic, copy)void (^completionCallBack)(void);
@end

@implementation OCTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //解除循环引用一
    //__weak typeof(self) weakSelf = self;
    //解决循环引用二
    //
    __unsafe_unretained typeof(self) weakSelf = self;
    //EXC_BAD_ACCESS 坏内存访问， 野指针访问
    //__unsafe_unretained同样是 assign 的引用 (MRC中没有weak)
    //在MRC中如果要弱引用对象都是使用 assign ,不会增加引用计数，但是一旦对象被释放，地址不会改变，继续访问，出现野指针
    //在ARC weak，本质是一个观察者模式，一旦发现对象被释放，会自动将地址设置为 nil,更加安全
    //weak效率略差一点
    [self loadData:^{
        NSLog(@"%@",weakSelf.view);
    }];
}

- (void)loadData:(void (^)(void))completion
{
    //使用属性记录 block
    self.completionCallBack = completion;
    //
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"耗时操作 %@",[NSThread currentThread]);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            //执行block
            completion();
        });
    });
}


@end
