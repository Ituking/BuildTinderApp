//
//  CardView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/07.
//

import SwiftUI

struct CardView: View {
    @State var person: Person
    @Binding var fullscreenMode: Bool
    
    var body: some View {
        GeometryReader { geo in
            if fullscreenMode {
                Text("FULL SCREEN")
            } else {
                CardImageScroller(person: person, fullscreenMode: $fullscreenMode)
                    .frame(width: geo.size.width - 20, height: geo.size.height)
                    .padding(.leading, 10)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: Person.example, fullscreenMode: .constant(false))
        CardView(person: Person.example, fullscreenMode: .constant(true))
    }
}
