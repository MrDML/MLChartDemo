//
//  ChartCustomViewController.swift
//  MLChartDemo
//
//  Created by 戴明亮 on 2019/3/12.
//  Copyright © 2019年 ML Day. All rights reserved.
//

import UIKit
import SnapKit


class ChartCustomViewController: UIViewController {

    lazy var topView: TickerTopView = {
        let view = TickerTopView()
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        setupUI()
        setupUIFrame()
    }
    
    func setupUI()
    {
        // 设置top视图
        self.view.addSubview(self.topView)
        self.topView.backgroundColor = UIColor.red
        
    }
    
    func setupUIFrame()
    {
        self.topView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview().inset(8)
            if #available(iOS 11.0, *) {
          make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(4)
            } else {
            make.top.equalTo(UIApplication.shared.statusBarFrame.height + 44)
            }
            make.height.equalTo(60)
        }
    }



}
