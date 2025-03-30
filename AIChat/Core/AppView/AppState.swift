//
//  AppState.swift
//  AIChat
//
//  Created by Kiran K on 31/03/25.
//

import Foundation

@Observable
class AppState {
    
    private(set) var showTabbar: Bool {
        didSet {
            UserDefaults.showTabbar = showTabbar
        }
    }
    
    init(showTabbar: Bool = UserDefaults.showTabbar) {
        self.showTabbar = showTabbar
    }
    
    func updateAppState(showTabbar: Bool) {
        self.showTabbar = showTabbar
    }
}
