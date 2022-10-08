//
//  CircleButtonView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/08.
//

import SwiftUI

enum ButtonType: String {
    case back = "gobackward"
    case no = "xmark"
    case star = "star.fill"
    case heart = "heart.fill"
    case lightning = "cloud.bolt.fill"
}

struct CircleButtonView: View {
    var type: ButtonType
    var action: () -> Void
    
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: type.rawValue)
                .resizable()
                .font(.system(size: 12))
                .fontWeight(.bold)
                .aspectRatio(contentMode: .fit)
        })
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(type: .back) {
            // Do something
        }
    }
}
