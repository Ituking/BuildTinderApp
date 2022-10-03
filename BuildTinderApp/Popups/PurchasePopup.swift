//
//  PurchasePopup.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/03.
//

import SwiftUI

struct PurchasePopup: View {
    
    @Binding var isVisible: Bool
    
    let screen = UIScreen.main.bounds
    
    func processPayment() {
        
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                    .frame(height: 40)
                
                VStack {
                    Text("Get Tinder Gold")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                    
                    Text("PurchaseSwipePromo")
                        .frame(height: geo.size.height / 3)
                        .background(Color.gray)
                    
                    Text("3 purchase Options")
                    
                    Spacer()
                    
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
                    
                    Button(action: { isVisible = false }, label: {
                        Text("No Thanks")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                    })
                    .padding(.vertical, 18)
                }
                .frame(width: geo.size.width)
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .foregroundColor(.white)
            )
                
                Spacer()
                
                VStack(spacing: 4) {
                    Text("Recurring billing, cancel anytime.")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                    Text("This is a bunch of example text is representing the legal text found on all subscription pages. Out of respect to the original application we will not be copying over their legal text word for word here.")
                        .foregroundColor(.white.opacity(0.5))
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 4)
                
                Spacer()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .frame(height: screen.height)
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup(isVisible: .constant(false))
    }
}
