//
//  PurchasePopup.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/03.
//

import SwiftUI

struct PurchasePopup: View {
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Get Tinder Gold")
                    .foregroundColor(.yellow)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                
                Text("PurchaseSwipePromo")
                    .frame(height: geo.size.height / 3)
                    .background(Color.gray)
                
                Text("3 purchase Options")
                
                Button(action: {}, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 45)
                            .foregroundColor(.yellow)
                        
                        Text("CONTINUE")
                            .foregroundColor(.white)
                    }
                })
                .frame(height: 55)
                .padding(.horizontal, 24)
                .padding(.top, 12)
                
                Text("No Thanks")
                
                Spacer()
            }
            .frame(width: geo.size.width)
        }
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup()
    }
}
