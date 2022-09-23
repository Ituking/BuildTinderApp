//
//  ChatManager.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import Foundation

class ChatManager: ObservableObject {
    @Published var messages : [Message] = []
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        loadMessages()
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
    }
}
