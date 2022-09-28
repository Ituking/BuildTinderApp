//
//  Message.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import Foundation


struct Message: Hashable {
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool {
        return person == nil
    }
}

extension Message {
    static let exampleSent = Message(content: "Hello.")
    static let exampleReceived = Message(content: "Hello.", person: Person.example)
}
