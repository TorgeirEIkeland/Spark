//
//  ActivityItem.swift
//  Spark
//
//  Created by Torgeir Eikeland on 26/10/2021.
//

import Foundation
import SwiftUI

struct ActivityItem: View {
    let activity: Activity
    var body: some View{
        Spacer().frame(width: 16)
        ZStack {
            Image(activity.photo)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            VStack{
                HStack {
                    Image("Antall deltakere")
                    Spacer()
                    VStack(alignment: .trailing){
                        Text(activity.name)
                            .foregroundColor(.white)
                        HStack{
                            Text(activity.location)
                                .foregroundColor(.white)
                                .underline()
                        }
                    }
                    Spacer().frame(width: 8)
                }
                Spacer()
                HStack{
                    Spacer()
                    Image(activity.icon)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .scaledToFit()
                        .frame(maxHeight: 50)
                }
            }
        }
    }
}
