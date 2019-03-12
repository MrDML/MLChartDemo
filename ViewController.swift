//
//  ViewController.swift
//  MLChartDemo
//
//  Created by 戴明亮 on 2019/3/12.
//  Copyright © 2019年 ML Day. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let containerView = UIStackView(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 200))
        containerView.axis = .vertical
        containerView.distribution = .fillEqually
        containerView.spacing = 10
        containerView.alignment = .fill
        
        
      
        for _ in 0..<5 {
            
            let view = UIView()
 
            view.backgroundColor = UIColor.init(red:  random(), green:  random(), blue:  random(), alpha: 1)
            
            containerView.addArrangedSubview(view)
        }
       
        view.addSubview(containerView)
        
    }
    
    
    func random() -> CGFloat {
        return CGFloat(Float.random(in: 0...256)/255.0)
    }
    


}

