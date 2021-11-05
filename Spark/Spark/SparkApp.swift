//
//  SparkApp.swift
//  Spark
//
//  Created by Torgeir Eikeland on 20/10/2021.
//

import SwiftUI

@main
struct SparkApp: App {
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor(named: "SparkColor")
        UITabBar.appearance().barTintColor = UIColor(named: "SparkColor")
    }
        
    var body: some Scene {
        WindowGroup {
            
            
            TabView {
                NavigationView{
                    HomeView()
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("First Tab")
                }
                
                NavigationView{
                    ChatView()
                }
                .tabItem {
                    Image(systemName: "message")
                    Text("Chat")
                }
                NavigationView{
                    CreateView()
                }
                .tabItem {
                    Image(systemName: "doc.fill.badge.plus")
                    Text("Opprett")
                }
                NavigationView{
                    ProfileView()
                }
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            }
        }
    }
}


