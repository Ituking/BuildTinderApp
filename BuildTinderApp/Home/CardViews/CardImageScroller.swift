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
    
    @Binding var fullscreenMode: Bool
    
    func updateImageIndex(additon: Bool) {
        let newIndex: Int
        
        if additon  {
            newIndex = imageIndex + 1
        } else {
            newIndex = imageIndex - 1
        }
        
        imageIndex = min(max(0, newIndex), person.imageURLS.count - 1)
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                ZStack {
                    KFImage(person.imageURLS[imageIndex])
                        .placeholder {
                            Color.white
                        }
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .clipped()
                    
                    HStack {
                        Rectangle()
                            .onTapGesture(perform: {
                                updateImageIndex(additon: false)
                            })
                        Rectangle()
                            .onTapGesture(perform: {
                                updateImageIndex(additon: true)
                            })
                    }
                    .foregroundColor(Color.white.opacity(0.01))
                }
                
                VStack {
                    HStack {
                        ForEach(0..<person.imageURLS.count) { imageIndex in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 4)
                                .foregroundColor(self.imageIndex == imageIndex ? Color.white : Color.gray.opacity(0.5))
                        }
                    }
                    .padding(.top, 6)
                    .padding(.horizontal, 12)
                    
                    Spacer()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(person.name)
                                    .font(.system(size: 32))
                                    .fontWeight(.heavy)
                                
                                Text(String(person.age))
                                    .font(.system(size: 28))
                                    .fontWeight(.light)
                            }
                            
                            Text(person.bio)
                                .font(.system(size: 18))
                                .fontWeight(.medium)
                                .lineLimit(2)
                        }
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image(systemName: "info.circle.fill")
                                .font(.system(size: 26))
                                .fontWeight(.medium)
                        })
                    }
                    .padding(16)
                }
                .foregroundColor(Color.white)
            }
            .cornerRadius(6)
            .shadow(radius: 5)
        }
    }
}

struct CardImageScroller_Previews: PreviewProvider {
    static var previews: some View {
        CardImageScroller(person: Person.example, fullscreenMode: .constant(false))
    }
}
