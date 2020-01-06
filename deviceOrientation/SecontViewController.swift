//
//  SecontViewController.swift
//  deviceOrientation
//
//  Created by song on 2020/1/2.
//  Copyright © 2020 song. All rights reserved.
//

import UIKit

class SecontViewController: UIViewController {
    
    // 是否支持屏幕旋转
    override var shouldAutorotate: Bool {
        get {
            return true
        }
    }
    
    // 当前页面支持的显示方向
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .landscapeLeft
        }
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        get {
            return .landscapeLeft
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lab = UILabel.init(frame: CGRect.init(x: 10, y: 100, width: 100, height: 100))
        lab.text = "hello"
        lab.backgroundColor = UIColor.red
        view.addSubview(lab)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        let value = UIInterfaceOrientation.landscapeLeft.rawValue
//        UIDevice.current.setValue(value, forKey: "orientation")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        let value = UIInterfaceOrientation.portrait.rawValue
//        UIDevice.current.setValue(value, forKey: "orientation")
//    }
    
    

}
