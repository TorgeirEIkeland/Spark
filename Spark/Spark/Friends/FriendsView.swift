//
//  FriendsVeiw.swift
//  Spark
//
//  Created by Torgeir Eikeland on 28/10/2021.
//

import Foundation
import SwiftUI

struct FriendsView: View {
    @ObservedObject var viewModel: FriendsViewModel = FriendsViewModel()
    @State var buttonsClicked = Set<String>()
    var body: some View {
        VStack{
            LogoView(page: Page.Friends)
            ScrollView(){
                ForEach(viewModel.friends, id: \.self) { friend in
                    ZStack {
                        
                        Rectangle().foregroundColor(Color("SparkColor")).frame(height: 88)
                        
                        HStack{
                            Spacer().frame(width: 32)
                            
                            Image(systemName: friend.picture)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            
                            
                            Spacer().frame(width: 32)
                            Rectangle().frame(width: 2, height: 57)
                            Spacer().frame(width: 16)
                            
                            VStack(alignment: .leading){
                                Text("\(friend.name) \(friend.age)")
                                Text(friend.location)
                            }
                            Spacer()
                            
                            Text("\(friend.sameIntrests) felles interesser")
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(_:8)
                            Spacer().frame(width: 16)
                            
                            Button {
                                if buttonsClicked.contains(friend.name){
                                    buttonsClicked.remove(friend.name)
                                } else {
                                    buttonsClicked.insert(friend.name)
                                }
                            } label: {
                                if buttonsClicked.contains(friend.name){
                                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 37)
                                        .foregroundColor(.black)
                                } else {
                                    Image(systemName: "person.crop.circle.fill.badge.plus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 37)
                                        .foregroundColor(.black)
                                }
                                Spacer().frame(width: 16)
                            }
                        }
                    }
                    Spacer().frame(height: 2)
                }
            }
            Spacer()
        }.navigationBarHidden(true)
        
    }
    
}
