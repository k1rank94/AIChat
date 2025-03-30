//
//  UserDefaults + Ext.swift
//  AIChat
//
//  Created by Kiran K on 30/03/25.
//

import Foundation

extension UserDefaults {
    private struct Keys {
        static let showTabbar = "showTabbar"
    }
    static var showTabbar: Bool {
        get {
            return standard.bool(forKey: Keys.showTabbar)
        }
        
        set {
            standard.set(newValue, forKey: Keys.showTabbar)
        }
    }
}
