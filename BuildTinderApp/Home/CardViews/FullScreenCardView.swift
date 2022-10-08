//
//  FullScreenCardView.swift
//  BuildTinderApp
//
//  Created by 大久保樹 on 2022/10/08.
//

import SwiftUI

struct FullScreenCardView: View {
    var person: Person
    
    @Binding var fullScreenMode: Bool
    
    let screen = UIScreen.main.bounds
    
    @EnvironmentObject var userMng: UserManager
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    CardImageScroller(
                        person: person,
                        fullscreenMode: $fullScreenMode)
                    .frame(width: screen.width, height: screen.height * 0.6)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(person.name)
                                    .font(.system(size: 32))
                                    .fontWeight(.heavy)
                                
                                Text(String(person.age))
                                    .font(.system(size: 28))
                                    .fontWeight(.light)
                                
                                Spacer()
                            }
                            .opacity(0.75)
                            
                            Text("\(person.distance) miles away")
                                .font(.system(size: 18))
                                .fontWeight(.medium)
                                .opacity(0.75)
                        }
                        .padding([.horizontal, .top], 16)
                        
                        Button(action: { fullScreenMode = false }, label: {
                            Image(systemName: "arrow.down.circle.fill")
                                .font(.system(size: 42))
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        .padding(.trailing, 16)
                        .offset(y: -40)
                    }
                    
                    Spacer().frame(height: 26)
                    
                    HStack {
                        Text(person.bio)
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .lineLimit(20)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                            .opacity(0.75)
                            .padding(.horizontal, 16)
                        
                        Spacer()
                    }
                    Spacer().frame(height: 32)
                    
                    VStack(spacing: 24) {
                        Button(action: { showActionSheet() }, label: {
                            VStack(spacing: 8) {
                                Text("SHARE \(person.name.uppercased())'S PROFILE")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                
                                Text("SEE WHAT A FRIEND THINGS")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .opacity(0.9)
                        })
                        
                        Button(action: {}, label: {
                            Text("REPORT \(person.name.uppercased())")
                                .font(.system(size: 18))
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                                .opacity(0.75)
                        })
                    }
                    
                    Spacer().frame(height: 200)
                }
            }
            
            HStack(spacing: 20) {
                Spacer()
                CircleButtonView(type: .no) {
                    fullScreenMode = false
                    userMng.swipe(person, .nope)
                }
                .frame(height: 50)
                
                CircleButtonView(type: .star) {
                    fullScreenMode = false
                    userMng.superLike(person)
                }
                .frame(height: 45)
                
                CircleButtonView(type: .heart) {
                    fullScreenMode = false
                    userMng.swipe(person, .like)
                }
                .frame(height: 50)
                
                Spacer()
            }
            .padding(.top, 25)
            .padding(.bottom, 45)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.white.opacity(0.2), Color.white]),
                    startPoint: .top,
                    endPoint: .bottom)
            )
        }
        .edgesIgnoringSafeArea(.bottom)
        .padding(.top, 40)
    }
    
    func showActionSheet() {
        
    }
}

struct FullScreenCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCardView(person: Person.example, fullScreenMode: .constant(true))
    }
}
