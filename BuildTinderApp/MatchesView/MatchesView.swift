//
//  MatchesView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/02.
//

import SwiftUI

struct MatchesView: View {
    
    @EnvironmentObject var userMng: UserManager
    
    @State private var selectedTab: LikedTab = .likes
    
    enum LikedTab {
        case likes
        case topPicks
    }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Text("\(userMng.matches.count) Likes")
                })
                .buttonStyle(PlainButtonStyle())
            }
            
            Spacer()
        }
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
            .environmentObject(UserManager())
    }
}
