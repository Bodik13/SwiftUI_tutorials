//
//  LandmarkList.swift
//  SwiftUI_tutorials
//
//  Created by Bohdan Hutsul on 03.07.2020.
//  Copyright © 2020 Bohdan Hutsul. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoriteOnly) {
                    Text("Favorite only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("List Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
