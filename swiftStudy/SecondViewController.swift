//
//  SecondViewController.swift
//  Test
//
//  Created by 张亚峰 on 2018/8/15.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI() -> () {
        //
        let tv = UITableView(frame: view.bounds, style: UITableViewStyle.plain)
        view.addSubview(tv)
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "callID")
        
        tv.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cellID")
        }
        cell?.textLabel?.text = "fengfneg"
        return cell!;
    }
}
