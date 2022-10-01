//
//  MessageThread.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import Foundation


struct MessagePreview: Hashable {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hello. I am 22 years old.")
    
    static let examples: [MessagePreview] = [
        MessagePreview(person: Person.example, lastMessage: "Hello. I am 22 years old."),
        MessagePreview(person: Person.example2, lastMessage: "I wanna go to Shinjyuku."),
//        MessagePreview(person: Person.example3, lastMessage: "What are you doing?")
    ]
}
