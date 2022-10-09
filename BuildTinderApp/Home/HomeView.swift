//
//  HomeView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/09.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    var body: some View {
        VStack {
            CardStack(people: userMng.cardPeople)
            
            Spacer()
            
            HStack {
                CircleButtonView(type: .back) {
                    //
                }
                
                Spacer()
                
                CircleButtonView(type: .no) {
                    //
                }
                
                Spacer()
                
                CircleButtonView(type: .star) {
                    //
                }
                
                Spacer()
                
                CircleButtonView(type: .heart) {
                    //
                }
                
                Spacer()
                
                CircleButtonView(type: .lightning) {
                    //
                }
            }
            .frame(height: 50)
            .padding(.horizontal)
            .padding(.vertical, 25)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}
