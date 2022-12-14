//
//  AppStateManager.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/23.
//

import Foundation

class AppStateManager: ObservableObject {
    
    @Published var selectedTab: TabBarButtonType = .fire
    
    @Published var showPersonsProfile: Person? = nil
    
    @Published var showPurchasePopup: Bool = false
    
    public func showPersonsProfile(_ person: Person) {
        self.showPersonsProfile = person
    }
    
    public func showPurchaseScreen() {
        self.showPurchasePopup = true
    }
}
