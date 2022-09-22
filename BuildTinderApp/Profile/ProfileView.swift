//
//  ProfileView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Circle()
                    .frame(height: 200)
                
                Button(action: {}, label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.gray.opacity(0.5))
                        .frame(width: 32, height: 32)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                })
            }
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .background(Color.gray)
    }
}
