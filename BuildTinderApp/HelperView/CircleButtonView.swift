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

struct CircleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                Circle()
                    .foregroundColor(Color.white)
            )
    }
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
        .buttonStyle(CircleButton())
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 50) {
                CircleButtonView(type: .back) {}
                    .frame(height: 50)
                CircleButtonView(type: .no) {}
                    .frame(height: 50)
                CircleButtonView(type: .star) {}
                    .frame(height: 50)
                CircleButtonView(type: .heart) {}
                    .frame(height: 50)
                CircleButtonView(type: .lightning) {}
                    .frame(height: 50)
            }
        }
    }
}
