//
//  LandmarkRow.swift
//  SwiftUI_tutorials
//
//  Created by Bohdan Hutsul on 03.07.2020.
//  Copyright © 2020 Bohdan Hutsul. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if !landmark.isFavorite {
                Image("face")
                    .imageScale(.medium)
                    .foregroundColor(.blue)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.sizeThatFits)
    }
}
