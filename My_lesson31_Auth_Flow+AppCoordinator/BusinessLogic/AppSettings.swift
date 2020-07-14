//
//  AppSettings.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 14.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

class AppSettings {
    private enum Key {
        static let isSwosedTutuorialKey = "isSwosedTutuorialKey"
        static let userLoggedKey = "userLoggedKey"
    }
    static let shared = AppSettings()
    
    private let userDefaults = UserDefaults.standard
    private var user: User?
    
    
    
    //показывать tutorial
    var isSwowedTutuorial: Bool {
        set {
            userDefaults.set(newValue, forKey: Key.isSwosedTutuorialKey)
        }
        
        get {
            return userDefaults.bool(forKey: Key.isSwosedTutuorialKey)
        }
    }
    
    //пользователь залогиненый?
    var isUserLogged: Bool {
        return user != nil
    }
    
    //MARK: - Init
    private init() {
        if let data = userDefaults.value(forKey: Key.userLoggedKey) as? Data,
            let user = try? JSONDecoder().decode(User.self, from: data) {
            self.user = user
        }
    }
    
    func loginUser(_ user: User) {
        self.user = user
        if let data = try? JSONEncoder().encode(user) {
            userDefaults.set(data, forKey: Key.userLoggedKey)
        }
    }
    
    func logoutUser() {
        self.user = nil
        userDefaults.removeObject(forKey: Key.userLoggedKey)
    }
}
