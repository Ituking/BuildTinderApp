//
//  FullScreenCardView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/08.
//

import SwiftUI

struct FullScreenCardView: View {
    var person: Person
    
    @Binding var fullScreenMode: Bool
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                CardImageScroller(
                    person: person,
                    fullscreenMode: $fullScreenMode)
                .frame(width: screen.width, height: screen.height * 0.6)
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(person.name)
                                .font(.system(size: 32))
                                .fontWeight(.heavy)
                            
                            Text(String(person.age))
                                .font(.system(size: 28))
                                .fontWeight(.light)
                            
                            Spacer()
                        }
                        .opacity(0.75)
                        
                        Text("\(person.distance) miles away")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .opacity(0.75)
                    }
                    .padding([.horizontal, .top], 16)
                }
            }
        }
    }
}

struct FullScreenCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCardView(person: Person.example, fullScreenMode: .constant(true))
    }
}
