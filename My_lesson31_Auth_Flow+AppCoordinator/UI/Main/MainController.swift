//
//  MainController.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 14.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class MainController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Main"
        
    }
    
    @IBAction private func logoutBtnClicked() {
        //alert
        let alert = UIAlertController(title: "Do you wont logOut?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler:{ [weak self] _ in
            AppSettings.shared.logoutUser()
            self?.openStart()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)

        
    }
    
    private func openStart() {
        //open StartController
        setWindowRootViewControllerFrom(storyboard: "Start")
    }
    
}
