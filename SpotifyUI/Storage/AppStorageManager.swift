//
//  AppStorageManager.swift
//  SpotifyUI
//
//  Created by Nosher Khalid on 7/6/25.
//

import Foundation


class AppStorageManager {
    static let shared = AppStorageManager()
    
    private var defaults = UserDefaults.standard
    
    private init() {}
    
    private enum Keys {
        static let isAuthenticated = "isAuthenticated"
    }
    
    var isAuthenticated: Bool {
        get { defaults.bool(forKey: Keys.isAuthenticated) }
        
        set { defaults.set(newValue, forKey: Keys.isAuthenticated) }
    }
}
