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
            
            Text("$\(String(format: "%.2f", sub.monthlyCost))/mo")
                .foregroundColor(.textPrimary)
            
            Spacer()
                .frame(height: 2)
            
            if sub.savePercent != nil {
                Text("\(sub.savePercent ?? 0)%")
                    .foregroundColor(.yellow)
                    .font(.system(size: 16))
                    .fontWeight(.heavy)
                    .frame(height: 22)
            } else {
                Spacer()
                    .frame(height: 22)
            }
            
            Text("$\(String(format: "%.2f", sub.totalCost))/mo")
                .font(.system(size: 20))
                .fontWeight(.bold)
        }
        .if(!isSelected) {
            $0.foregroundColor(Color.textPrimary)
        }
        .if(isSelected) {
            $0.overlay(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.yellow, lineWidth: 1.5)
            )
        }
    }
}

struct PurchaseOptionView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            PurchaseOptionView(sub: Subscription.example1, isSelected: false)
            PurchaseOptionView(sub: Subscription.example2, isSelected: true)
            PurchaseOptionView(sub: Subscription.example3, isSelected: false)
        }
    }
}
