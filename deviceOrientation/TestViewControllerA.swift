//
//  TestViewControllerA.swift
//  deviceOrientation
//
//  Created by song on 2020/1/3.
//  Copyright © 2020 song. All rights reserved.
//

import UIKit

class TestViewControllerA: MyViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 点击横屏
    @IBAction func tolandscape(_ sender: Any) {
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        if UIDevice.current.responds(to: #selector(setValue(_:forKey:))) {
            UIDevice.current.setValue(value, forKey: "orientation")
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let value = UIInterfaceOrientation.portrait.rawValue
        if UIDevice.current.responds(to: #selector(setValue(_:forKey:))) {
            UIDevice.current.setValue(value, forKey: "orientation")
        }
    }
    
    
    @IBAction func defaultLandscape(_ sender: Any) {
        let tb = TestViewControllerB.init()
        navigationController?.pushViewController(tb, animated: true)
    }
    
    override var shouldAutorotate: Bool {
        get {
            return true
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .all
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .default
        }
    }
}
