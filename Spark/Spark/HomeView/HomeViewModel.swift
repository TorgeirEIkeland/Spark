//
//  HomeViewModel.swift
//  Spark
//
//  Created by Torgeir Eikeland on 20/10/2021.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var placeholderList: [Int] = [1,2,3,4,5,6,7]
    
    @Published var activityList: [Event] = []
    
    init() {
        activityList = FileStorage().getEvents()
    }
}

