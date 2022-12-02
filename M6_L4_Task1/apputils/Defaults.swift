//
//  Defaults.swift
//  M6_L4_Task1
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import Foundation

struct Defaults {
    static var defaults = UserDefaults.standard
    
    static func storeUser(user: User){
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(user) {
            defaults.set(encodedUser, forKey: "user")
        }
    }
    static func loadUser() -> User! {
        if let savedUserData = defaults.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            if let savedUser = try? decoder.decode(User.self, from: savedUserData){
                return savedUser
            }
        }
        return nil
    }
}
