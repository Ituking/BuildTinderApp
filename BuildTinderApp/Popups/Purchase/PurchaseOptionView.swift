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
        VStack(spacing: 0) {
            Text("\(sub.month)")
                .font(.system(size: 44))
                .fontWeight(.light)
            
            Spacer()
                .frame(height: 2)
            
            Text("month\(sub.month > 1 ? "s" : "")")
                .if(isSelected) {
                    $0.font(.system(size: 14))
                        .fontWeight(.bold)
                }
            
            Spacer()
                .frame(height: 2)
            
            Text("$\(String(format: "N.2f", sub.monthlyCost))/mo")
        }
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
