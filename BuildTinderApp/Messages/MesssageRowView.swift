//
//  MesssageRowView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/28.
//

import SwiftUI
import KingfisherSwiftUI

struct MesssageRowView: View {
    var preview: MessagePreview
    
    var body: some View {
        HStack {
            RoundedImage(url: preview.person.imageURLS.first)
                .frame(height: 90)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(preview.person.name)
                    .font(.system(size: 21))
                    .fontWeight(.semibold)
                
                Text(preview.lastMessage)
                    .foregroundColor(.textPrimary)
                    .lineLimit(1)
            }
            
            Spacer()
        }
    }
}

struct MesssageRowView_Previews: PreviewProvider {
    static var previews: some View {
        MesssageRowView(preview: MessagePreview.example)
    }
}
