//
//  PersonSquare.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/30.
//

import SwiftUI
import KingfisherSwiftUI

struct PersonSquare: View {
    var person: Person
    var blue: Bool
    
    var body: some View {
        KFImage(person.imageURLS.first)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 240)
    }
}

struct PersonSquare_Previews: PreviewProvider {
    static var previews: some View {
        PersonSquare(person: Person.example, blue: false)
    }
}
