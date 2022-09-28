//
//  MessageListVM.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/26.
//

import Foundation

class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        // Handle networking to load messagePreviews from a server
        self.messagePreviews = MessagePreview.examples
    }
}
