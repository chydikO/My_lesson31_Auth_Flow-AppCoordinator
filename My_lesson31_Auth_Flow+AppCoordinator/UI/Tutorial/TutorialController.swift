//
//  TutorialController.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 13.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class TutorialController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Tutorial"
    }
    
    @IBAction private func appStart() {
        check()
    }
    
    private func check() {
        AppSettings.shared.isSwowedTutuorial = true
        // open Auth or Maine
        if AppSettings.shared.isUserLogged {
            openMain()
        } else {
            openAuth()
        }
    }
    private func openAuth() {
        setWindowRootViewControllerFrom(storyboard: "Auth")
    }
    
    private func openMain() {
        setWindowRootViewControllerFrom(storyboard: "Main")
    }
}
