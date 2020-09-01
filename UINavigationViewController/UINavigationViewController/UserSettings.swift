//
//  UserSettings.swift
//  UINavigationViewController
//
//  Created by Муслим Курбанов on 27.08.2020.
//  Copyright © 2020 Муслим Курбанов. All rights reserved.
//

import Foundation

final class UserSettings {
    
    private enum SettingsKeys: String {
        case userName
        case userSurname
    }
     
    static var userName: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.userName.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.userName.rawValue
            if let name = newValue {
                print("Value \(name) was added to key \(key)")
                defaults.set(name, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var userSurname: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.userSurname.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.userSurname.rawValue
            if let surname = newValue {
                print("Value \(surname) was added to key \(key)")
                defaults.set(surname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
}
