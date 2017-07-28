//
//  ViewController.swift
//  UIKitPractice
//
//  Created by JordanLin on 2017/7/28.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import UIKit

import MapKit

class ViewController: UIViewController {
    
    var headerView: UIView!
    
    var segmentedControl: UISegmentedControl!
    
    var mapView: MKMapView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUpHeaderView()
        
        addUISegmentedControl()
        
        setMapKit()

        
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
        
        segmentedControl.frame.origin = CGPoint(x: self.view.frame.width/3, y: 50)
        
        self.headerView.addSubview(segmentedControl)
        
    }
    
    func setMapKit() {
        
        mapView = MKMapView(frame: CGRect(x: 0, y: 100, width: self.view.frame.width, height: 300))
        
        self.headerView.addSubview(mapView)
        
        mapView.mapType = .standard
        
    }

}

