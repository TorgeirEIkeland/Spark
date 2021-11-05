//
//  ContentView.swift
//  Spark
//
//  Created by Torgeir Eikeland on 20/10/2021.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel = HomeViewModel()
    var body: some View {
        VStack{
            LogoView(page: Page.Home)
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(viewModel.activityList, id: \.self) { event in
                        HStack{
                            Spacer().frame(width: 16)
                            Text(event.eventName)
                                .font(.system(size: 20))
                        }
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(event.activies, id: \.self ) { activity in
                                    ActivityItem(activity: activity)
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
