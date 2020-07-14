//
//  UIViewController.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 14.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setWindowRootViewControllerFrom(storyboard: String) {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        if
            let controller = storyboard.instantiateInitialViewController(),
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
        {
            appDelegate.window?.rootViewController = controller
            print(self.className)
        }
    }
}
