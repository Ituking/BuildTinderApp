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
                    .offset(x: person.x, y: person.y)
                    .rotationEffect(.degrees(person.degree))
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.default) {
                                    person.x = value.translation.width
                                    person.y = value.translation.height
                                    withAnimation {
                                        person.degree = Double((value.translation.width / 25 * -1))
                                    }
                                }
                            })
                    )
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
