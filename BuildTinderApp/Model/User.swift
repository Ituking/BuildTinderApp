//
//  User.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/28.
//

import Foundation

struct User: {
    var name: String
    
    var goldSubscriber: Bool = false
}

extension User {
    static let example = User[name: "大久保", goldSubscriber: false]
}
