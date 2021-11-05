//
//  LogoView.swift
//  Spark
//
//  Created by Torgeir Eikeland on 20/10/2021.
//

import Foundation
import SwiftUI

struct LogoView: View {
    let page: Page
    var body: some View{
        Spacer().frame(height: 32)
        Image("Spark-Logo")
        Spacer().frame(height: 32)
        HStack{
            
            
                Spacer()
            if page == Page.Home{
                Text("Hjem").font(.system(size: 30, weight: .heavy, design: .default))
            } else {
                NavigationLink {
                    HomeView()
                } label: {
                    Text("Hjem").foregroundColor(.gray)
                }
            }
                Spacer()
            if page == Page.Friends {
                Text("Venner").font(.system(size: 30, weight: .heavy, design: .default))
            } else {
                NavigationLink {
                    FriendsView()
                } label: {
                    Text("Venner").foregroundColor(.gray)
                }
            }
                Spacer()
            if page == Page.Map {
                Text("Kart").font(.system(size: 30, weight: .heavy, design: .default))
            } else {
                NavigationLink {
                    MapView()
                } label: {
                    Text("Kart").foregroundColor(.gray)
                }
                    
            }
                Spacer()
            
            
        }
        .font(.system(size: 24))
        
        Spacer().frame(height: 50)
    }
    
}

enum Page {
    case Home
    case Friends
    case Map
}


