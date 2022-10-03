//
//  PurchasePopup.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/03.
//

import SwiftUI

struct PurchasePopup: View {
    var body: some View {
        VStack {
            Text("Get Tinder Gold")
                .foregroundColor(.yellow)
                .font(.system(size: 24))
                .fontWeight(.bold)
            
            Text("PurchaseSwipePromo")
            
            Text("3 purchase Options")
            
            Text("Continue")
            
            Text("No Thanks")
            
            Spacer()
        }
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup()
    }
}
