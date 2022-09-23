//
//  ChatViewHeader.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import SwiftUI

struct ChatViewHeader: View {
    @Environment(\.presentationMode) var presentationMode
    
    let name: String
    let imageURL: URL?
    let videoAction: () -> Void
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.top)
                .shadow(radius: 3)
            
            HStack {
                Button(action: { presentationMode.wrappedValue.dismiss() }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.textPrimary)
                        .font(.system(size: 28))
                        .fontWeight(.semibold)
                })
                
                Button(action: { videoAction() }, label: {
                    Image(systemName: "video.fill")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                })
            }
        }
        .frame(height: 50)
    }
}

struct ChatViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        let person = Person.example
        ChatViewHeader(
            name: person.name,
            imageURL: person.imageURLS.first,
            videoAction: {
                //
            }
        )
    }
}
