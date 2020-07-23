//
//  UserData.swift
//  My Landmarks
//
//  Created by  Aleksandr on 23.07.2020.
//  Copyright © 2020  Aleksandr. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
