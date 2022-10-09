//
//  CardStack.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/09.
//

import SwiftUI

struct CardStack: View {
    var people: [Person]
    
    @State private var fullscreenMode: Bool = false
    
    var body: some View {
        ZStack {
            ForEach(people) { person in
                CardView(person: person, fullscreenMode: $fullscreenMode)
            }
        }
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStack(people: Person.examples)
    }
}
