//
//  LikesView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/28.
//

import SwiftUI

struct LikesView: View {
    @EnvironmentObject var userMng: UserManager
    
    private var user: User {
        return userMng.currentUser
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            if !user.goldSubscriber {
                Text("Upgrade to Gold to see people who already liked you.")
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .foregroundColor(.textTitle)
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .padding(.horizontal, 40)
                .padding(.vertical, 24)
            }
            
            LazyVGrid(
                columns: [GridItem()],
                alignment: .center,
                spacing: nil,
                pinnedViews: [],
                content: {
                    Text("Placeholder")
                    Text("Placeholder")
            })
        })
    }
}

struct LikesView_Previews: PreviewProvider {
    static var previews: some View {
        LikesView().environmentObject(UserManager())
    }
}
