//
//  tab+extension.swift
//  deviceOrientation
//
//  Created by song on 2020/1/3.
//  Copyright © 2020 song. All rights reserved.
//

import Foundation
import UIKit

extension UITabBarController {
    open override var shouldAutorotate: Bool {
        get{
            return selectedViewController!.shouldAutorotate
        }
    }
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return selectedViewController!.supportedInterfaceOrientations
        }
    }
    
    open override var childForStatusBarStyle: UIViewController? {
        return selectedViewController!
    }
    
    open override var childForStatusBarHidden: UIViewController? {
        return selectedViewController!
    }
}
