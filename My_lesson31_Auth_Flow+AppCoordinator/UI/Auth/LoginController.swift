//
//  LoginController.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 14.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class LoginController: BaseViewController {

        override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
        
    }
    
    @IBAction private func loginBtnClicked() {
        let user = User(name: "Vasya", email: "vasya99@mail.com", password: "p@ssw0rD", phoneNumber: "123-123-123", photo: nil)
        
        AppSettings.shared.loginUser(user)
        openMain()
    }
    
    private func openMain() {
        //open StartController
        setWindowRootViewControllerFrom(storyboard: "Main")
    }


}
