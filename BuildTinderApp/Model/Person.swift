//
//  Person.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import SwiftUI


struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    
    var name: String
    var imageURLS: [URL]
    var bio: String
    var distance: Int
    
    var bioLong: String
    
    var age: Int
    
    // Used for card manipulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
}

extension Person {
    static let example = Person(
        name: "Hayasa",
        imageURLS: [
            URL(string: "https://picsum.photos/400/300")!,
            URL(string: "https://picsum.photos/400/301")!,
            URL(string: "https://picsum.photos/400/302")!,
            URL(string: "https://picsum.photos/400/303")!
        ],
        bio: "This is my bio.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.",
        distance: 8,
        bioLong: "This is my bio.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.",
        age: 22
    )
    static let example2 = Person(
        name: "Yuzuha",
        imageURLS: [URL(string: "https://picsum.photos/400/301")!],
        bio: "I wanna go to Shinjyuku.",
        distance: 3,
        bioLong: "This is my bio.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.",
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
            imageURLS: [
                URL(string: "https://picsum.photos/400/302")!,
                URL(string: "https://picsum.photos/400/303")!,
                URL(string: "https://picsum.photos/400/304")!,
                URL(string: "https://picsum.photos/400/305")!
            ],
            bio: "What are you doing?",
            distance: 2,
            bioLong: "This is my bio.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.",
            age: 20
        ),
        Person(
            name: "Messi",
            imageURLS: [
                URL(string: "https://picsum.photos/400/306")!,
                URL(string: "https://picsum.photos/400/307")!,
                URL(string: "https://picsum.photos/400/308")!,
                URL(string: "https://picsum.photos/400/309")!
            ],
            bio: "I wanna go back to Barcalona.",
            distance: 150,
            bioLong: "This is my bio.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.",
            age: 35
        ),
        Person(
            name: "Ayana",
            imageURLS: [
                URL(string: "https://picsum.photos/400/302")!,
                URL(string: "https://picsum.photos/400/303")!,
                URL(string: "https://picsum.photos/400/304")!,
                URL(string: "https://picsum.photos/400/305")!
            ],
            bio: "I like video editing.",
            distance: 5,
            bioLong: "This is my bio.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.I wanna go to Shinjyuku.",
            age: 26
        )
    ]
}
