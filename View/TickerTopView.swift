//
//  TickerTopView.swift
//  MLChartDemo
//
//  Created by 戴明亮 on 2019/3/12.
//  Copyright © 2019年 ML Day. All rights reserved.
//

import UIKit
import SnapKit

class TickerTopView: UIView {
    
    // 左侧布局
    lazy var leftStack:UIStackView = {
        let ls = UIStackView()
        ls.axis = .vertical
        ls.spacing = 10
        ls.alignment = .fill
        ls.distribution = .fillEqually
        return ls
    }()
    
    // 右侧布局
   lazy var rightStack:UIStackView = {
        let rs = UIStackView()
        rs.axis = .vertical
        rs.distribution = .fillEqually
        rs.alignment = .fill
        rs.spacing = 10
        return rs
    }()
    
    // 价格
    lazy var labelPrice: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.green
        label.backgroundColor = UIColor.yellow
        label.font = UIFont.systemFont(ofSize: 26)
        return label
    }()
    
    
    // 涨跌
    
    
    

    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    
    func setupUI()
    {
        self.addSubview(self.leftStack)
        self.addSubview(self.rightStack)
        
        let l1 = UIStackView()
        l1.axis = .horizontal
        l1.alignment = .fill
        l1.spacing  = 10
        l1.distribution = .fillEqually
        
        
        
        self.labelPrice.text = "1024"
        self.leftStack.addArrangedSubview(self.labelPrice)
        self.leftStack.addArrangedSubview(l1);
        
        setupConstraints()
        
    }
    
    // 配置布局位置
    func setupConstraints()
    {
        
        self.leftStack.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.bottom.equalToSuperview()
            make.right.equalTo(self.rightStack.snp.left)
        }
        
        self.rightStack.snp.makeConstraints { (make) in
            make.width.equalTo(self.leftStack.snp.width)
            make.top.bottom.equalToSuperview()
            make.right.equalToSuperview()
        }
        
    }
    
    
    

}
