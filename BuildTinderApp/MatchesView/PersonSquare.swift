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
        ZStack(alignment: .bottomLeading) {
            KFImage(person.imageURLS.first)
                .resizable()
                .aspectRatio(contentMode: .fill)
            .frame(height: 240)
            
            Text("\(person.name), \(person.age)")
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 18))
                .fontWeight(.semibold)
        }
        .cornerRadius(16)
    }
}

struct PersonSquare_Previews: PreviewProvider {
    static var previews: some View {
        PersonSquare(person: Person.example, blue: false)
    }
}
