//
//  PurchasePopup.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/03.
//

import SwiftUI

struct PurchasePopup: View {
    
    let screen = UIScreen.main.bounds
    
    func processPayment() {
        
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                VStack {
                    Text("Get Tinder Gold")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                    
                    Text("PurchaseSwipePromo")
                        .frame(height: geo.size.height / 3)
                        .background(Color.gray)
                    
                    Text("3 purchase Options")
                    
                    Button(action: { processPayment() }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.yellow)
                            
                            Text("CONTINUE")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                        }
                    })
                    .frame(height: 55)
                    .padding(.horizontal, 24)
                    .padding(.top, 12)
                    
                    Button(action: {}, label: {
                        Text("No Thanks")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                    })
                    
                    Spacer()
                }
                .frame(width: geo.size.width)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .foregroundColor(.white)
            )
                
                VStack {
                    Text("Recurring billing, cancel anytime.")
                    Text("This is a bunch of example text is representing the legal text found on all subscription pages. Out of respect to the original application we will not be copying over their legal text word for word here.")
                }
            }
        }
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup()
    }
}