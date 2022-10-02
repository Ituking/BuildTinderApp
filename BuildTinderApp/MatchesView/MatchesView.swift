//
//  MatchesView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/02.
//

import SwiftUI

struct MatchesView: View {
    
    @State private var selectedTab: LikedTab = .likes
    
    enum LikedTab {
        case likes
        case topPicks
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
    }
}
