//
//  User.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/28.
//

import Foundation

struct User {
    var name: String
    var age: Int
    var jobTitle: String
    
    var goldSubscriber: Bool = false
    var profileTip: String = ""
    
    var imageURLs: [URL] = []
}

extension User {
    static let example = User(
        name: "Itsuki",
        age: 23,
        jobTitle: "Software Engineer",
        goldSubscriber: false,
        profileTip: "Photo Tip: Make waves with a beach photo and get more likes",
        imageURLs: [URL(string: "https://picsum.photos/400/310")!]
    )
}
