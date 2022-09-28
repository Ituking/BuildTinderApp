//
//  ContentView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//
import SwiftUI

struct ContentView: View {
    @ObservedObject var mng: AppStateManager = AppStateManager()
    @ObservedObject var userMng: UserManager = UserManager()
    
    var body: some View {
        MainView()
            .environmentObject(mng)
            .environmentObject(userMng)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
