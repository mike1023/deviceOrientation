//
//  FirstViewController.swift
//  deviceOrientation
//
//  Created by song on 2020/1/3.
//  Copyright © 2020 song. All rights reserved.
//

import UIKit

class FirstViewController: MyViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }    
    
    @IBAction func pushVC(_ sender: Any) {
        let ta = TestViewControllerA.init()
        navigationController?.pushViewController(ta, animated: true)
    }
    
}
