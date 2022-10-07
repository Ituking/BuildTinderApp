//
//  CardImageScroller.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/07.
//

import SwiftUI
import KingfisherSwiftUI

struct CardImageScroller: View {
    
    var person: Person
    
    @State private var imageIndex = 0
    
    var body: some View {
        ZStack {
            KFImage(person.imageURLS[imageIndex])
        }
    }
}

struct CardImageScroller_Previews: PreviewProvider {
    static var previews: some View {
        CardImageScroller(person: Person.example)
    }
}
