//
//  UserDefaults+Helpers.swift
//  Audible
//
//  Created by Sateesh Dara on 14/09/18.
//  Copyright © 2018 Sateesh Dara. All rights reserved.
//
import Foundation

extension UserDefaults {
    
    enum UserDefaultsKeys: String {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
    
}
