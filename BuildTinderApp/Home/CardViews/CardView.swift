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
    
    let screenCutOff = (UIScreen.main.bounds.width / 2) * 0.8
    
    var body: some View {
        GeometryReader { geo in
            if fullscreenMode {
                Text("FULL SCREEN")
            } else {
                CardImageScroller(person: person, fullscreenMode: $fullscreenMode)
                    .animation(.easeOut(duration: 0.2))
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
                                        person.degree = Double((value.translation.width / 25) * -1)
                                    }
                                }
                            })
                            .onEnded({ value in
                                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 10, initialVelocity: 0)) {
                                    let width = value.translation.width
                                    
                                    if width >= 0 && width <= screenCutOff {
                                        // Snap back to middle
                                        person.x = 0
                                        person.y = 0
                                        person.degree = 0
                                    } else if width  <= -1 && width >= -screenCutOff {
                                        // Snap back to middle
                                        person.x = 0
                                        person.y = 0
                                        person.degree = 0
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
