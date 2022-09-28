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
    static let example = MessagePreview(person: Person.example, lastMessage: "こんにちは。そちらの天気は現在どうなっていますか？")
    
    static let examples: [MessagePreview] = [
        MessagePreview(person: Person.example, lastMessage: "こんにちは。そちらの天気は現在どうなっていますか？"),
        MessagePreview(person: Person.example2, lastMessage: "何してるの？")
    ]
}
