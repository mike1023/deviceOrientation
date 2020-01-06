//
//  TestViewControllerB.swift
//  deviceOrientation
//
//  Created by song on 2020/1/3.
//  Copyright © 2020 song. All rights reserved.
//

import UIKit

class TestViewControllerB: MyViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
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
    


    override var shouldAutorotate: Bool {
        get {
            return true
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .landscapeLeft
        }
    }
    
    
    

}
