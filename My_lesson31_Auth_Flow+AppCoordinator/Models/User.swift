//
//  User.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 14.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

struct User: Codable {
    var name: String
    var email: String
    var password: String
    var phoneNumber: String
    var photo: String?
}
