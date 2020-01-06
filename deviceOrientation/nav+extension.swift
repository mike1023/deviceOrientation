//
//  nav+extension.swift
//  deviceOrientation
//
//  Created by song on 2020/1/2.
//  Copyright © 2020 song. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    open override var shouldAutorotate: Bool {
        get{
            return self.topViewController!.shouldAutorotate
        }
    }
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return topViewController!.supportedInterfaceOrientations
        }
    }
    
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController!
    }
    
    open override var childForStatusBarHidden: UIViewController? {
        return topViewController!
    }

}
