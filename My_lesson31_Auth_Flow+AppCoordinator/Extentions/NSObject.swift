//
//  NSObject.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 14.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

extension NSObject {
    var className: String {
        return String(describing: self)
    }
    
    static var className: String {
        return String(describing: self)
    }
}
