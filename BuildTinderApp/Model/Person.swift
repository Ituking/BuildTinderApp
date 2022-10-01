//
//  Person.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import Foundation


struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    
    var name: String
    var imageURLS: [URL]
    var bio: String
    
    var age: Int
}

extension Person {
    static let example = Person(
        name: "Hayasa",
        imageURLS: [URL(string: "https://picsum.photos/400/300")!],
        bio: "This is my bio.",
        age: 22
    )
    static let example2 = Person(
        name: "Yuzuha",
        imageURLS: [URL(string: "https://picsum.photos/400/301")!],
        bio: "I wanna go to Shinjyuku.",
        age: 19
    )
//    static let example3 = Person(
//        name: "Memi",
//        imageURLS: [URL(string: "https://picsum.photos/400/302")!],
//        bio: "What are you doing?",
//        age: 20
//    )
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(
            name: "Memi",
            imageURLS: [URL(string: "https://picsum.photos/400/302")!],
            bio: "What are you doing?",
            age: 20
        ),
        Person(
            name: "Messi",
            imageURLS: [URL(string: "https://picsum.photos/400/303")!],
            bio: "I wanna go back to Barcalona.",
            age: 35
        ),
        Person(
            name: "Ayana",
            imageURLS: [URL(string: "https://picsum.photos/400/304")!],
            bio: "I like video editing.",
            age: 26
        )
    ]
}
