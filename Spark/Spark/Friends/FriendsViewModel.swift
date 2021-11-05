//
//  FriendsViewModel.swift
//  Spark
//
//  Created by Torgeir Eikeland on 04/11/2021.
//

import Foundation
import SwiftUI

class FriendsViewModel: ObservableObject {
    @Published var friends: [Person] = []
    
    init(){
        friends = FileStorage().getFriends()
    }
}
