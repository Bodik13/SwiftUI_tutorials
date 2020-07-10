//
//  ContentView.swift
//  SwiftUI_tutorials
//
//  Created by Bohdan Hutsul on 02.07.2020.
//  Copyright © 2020 Bohdan Hutsul. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
           userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            ImageView(image: landmark.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                        .underline(true, color: .red)
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image("face")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image("face")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Spacer()
            }.padding(16)
        }
        .navigationBarTitle(landmark.name, displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
