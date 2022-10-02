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
        VStack(spacing: 0) {
            HStack {
                Spacer()
                
                Button(action: { selectedTab = .likes }, label: {
                    Text("\(userMng.matches.count) Likes")
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                        .if(selectedTab == .topPicks) {
                            $0.foregroundColor(.textPrimary)
                        }
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: { selectedTab = .topPicks }, label: {
                    Text("\(userMng.topPicks.count) Top Picks")
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                        .if(selectedTab == .likes) {
                            $0.foregroundColor(.textPrimary)
                        }
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
            }
            
            Divider()
                .padding(.vertical, 14)
            
            if selectedTab == .likes {
                LikesView()
            } else {
                TopPicksView()
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
