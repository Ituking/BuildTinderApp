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
    
    public func sendMessage(_ message: Message) {
        // Networking
        messages.append(message)
        // if networking failure, then show an error with some retry options
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
    }
}
