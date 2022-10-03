//
//  PurchaseOptionView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/03.
//

import SwiftUI

struct PurchaseOptionView: View {
    var sub: Subscription
    var isSelected: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PurchaseOptionView_Previews: PreviewProvider {
    static var previews: some View {
        let isSelected = true
        
        PurchaseOptionView(sub: Subscription.example1, isSelected: isSelected)
        PurchaseOptionView(sub: Subscription.example2, isSelected: isSelected)
        PurchaseOptionView(sub: Subscription.example3, isSelected: isSelected)
    }
}
