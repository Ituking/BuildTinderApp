//
//  Person.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import Foundation


struct Person: Hashable {
    var name: String
    var imageURLS: [URL]
}

extension Person {
    static let example = Person(name: "松崎", imageURLS: [URL(string: "https://picsum.photos/400/300")!])
}
