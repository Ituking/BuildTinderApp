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
