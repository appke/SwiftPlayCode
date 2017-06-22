//
//  ViewController.swift
//  02-TableView演练
//
//  Created by 穆良 on 2017/6/21.
//  Copyright © 2017年 穆良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    lazy var tableView: UITableView = {
        
        let tb = UITableView(frame: CGRect.zero, style: UITableViewStyle.plain)
        tb.dataSource = self
        tb.register(UITableViewCell.self , forCellReuseIdentifier: "CELL")

        return tb    }()
    
    override func loadView() {
        view = tableView;
    }
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.magenta
        
    }




}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 51;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 方式一
        // 必须注册
        // iOS6.0出现indexPath 代替下面的三句话
//        let cell = tableView.dequeueReusableCe÷ll(withIdentifier: "CELL", for: indexPath)
//        cell.textLabel?.text = "hello \(indexPath.row)"
//        return cell
        
        // 方式二
        // 最原始的方法，也可利用注册机制 不用判断了
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
//        if cell == nil {
//            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "CELL")
//        }
        cell?.textLabel?.text = "hello \(indexPath.row)"
        return cell!
    }
}

/*
 ### 思考问题
 1. 创建tableView，frame参数怎么填？
 - 注册cell怎么填写class类型？
 - 怎样让view == tableView?
 - 为什么会死循环
 - 注册机制是怎样的
 - 原始创建时，cell为什么要转来转去
 - extension怎么用
 - 为什么不用写override了?
 
 */
