//
//  ViewController.swift
//  UIKitPractice
//
//  Created by JordanLin on 2017/7/28.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var headerView: UIView!
    
    var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpHeaderView()
        
        addUISegmentedControl()
        
        addMapKit()

        
    }

    func setUpHeaderView() {
        
        headerView = UIView()
        
        headerView.backgroundColor = .white
        
        self.view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        headerView.heightAnchor.constraint(equalTo:self.view.heightAnchor).isActive = true
        
    }
    
    func addUISegmentedControl() {
        
        segmentedControl = UISegmentedControl(items: ["早安", "午安", "晚安"])
        
        segmentedControl.frame.origin = CGPoint(x: self.view.frame.width/2, y: 50)
        
        self.headerView.addSubview(segmentedControl)
        
    }

}

