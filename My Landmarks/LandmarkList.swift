//
//  LandmarkList.swift
//  My Landmarks
//
//  Created by  Aleksandr on 23.07.2020.
//  Copyright © 2020  Aleksandr. All rights reserved.
//

import SwiftUI


struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Избранные")
                }
                ForEach(userData.landmarks) {landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite{
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Достопримечательности"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}
