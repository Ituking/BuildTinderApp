//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/28.
//

import Foundation

class UserManager: ObservableObject {
    
    @Published var currentUser: User = User(name: "")
    
    init() {
        loadUser()
    }
    
    private func loadUser() {
        self.currentUser = User.example
    }
}
