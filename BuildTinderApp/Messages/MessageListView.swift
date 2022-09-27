//
//  MessageListView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/09/26.
//

import SwiftUI

struct MessageListView: View {
    @ObservedObject var vm: MessageListVM = MessageListVM()
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            TextField("Search Matches", text: $searchText)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color.textfieldBG)
                .cornerRadius(8)
            
            Text("Vstack of all of our conversations")
        }
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}
