//
//  ImageView.swift
//  SwiftUI_tutorials
//
//  Created by Bohdan Hutsul on 02.07.2020.
//  Copyright © 2020 Bohdan Hutsul. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    var body: some View {
        image
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .scaledToFit()
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("moto"))
            .previewDevice("iPhone 11")
    }
}
