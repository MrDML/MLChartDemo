//
//  MLMainViewController.swift
//  MLChartDemo
//
//  Created by 戴明亮 on 2019/3/12.
//  Copyright © 2019年 ML Day. All rights reserved.
//

import UIKit

class MLMainViewController: UITableViewController {

    
//    var dataSource:[String] = [String]();
    
    var dataSource:[[String:String]] = [
        ["title":"k线最佳实践例子","class":"ChartCustomViewController"],
        ["title":"K线简单线段例子","class":"ChartCustomViewController"],
        ["title":"K线静态图片例子","class":"ChartCustomViewController"],
        ["title":"K线列表图表例子","class":"ChartCustomViewController"],
        ["title":"盘口深度图表例子","class":"ChartCustomViewController"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        self.tableView.register(MLMainTableViewCell.self, forCellReuseIdentifier: "identifre")
       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataSource.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
     let cell = tableView.dequeueReusableCell(withIdentifier: "dmlid", for: indexPath)

        let dic = dataSource[indexPath.row]
        cell.textLabel?.text = String.init(format: "%@", dic["title"] ?? "")
 
        return cell
        
//        var cell  = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
//         let dic = dataSource[indexPath.row]
//
//
//        if cell == nil {
//            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "reuseIdentifier")
//        }
//        cell?.isUserInteractionEnabled = true
//
//        cell!.textLabel?.text = String.init(format: "%@", dic["title"] ?? "")
//        return cell!
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        tableView.deselectRow(at: indexPath, animated: true)
        
        let dic = dataSource[indexPath.row]
         let value = dic["class"]
         var vc : UIViewController
        guard let value_ = value else { return }
        
        
        
        guard let nameSpage = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else { return }
        
        
      
         print(nameSpage)
        
        guard let type = NSClassFromString(nameSpage+"."+value_) as? UIViewController.Type else { return  }
       
        vc  = type.init()
        
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    



}
