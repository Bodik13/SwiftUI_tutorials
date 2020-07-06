//
//  ContentView.swift
//  SwiftUI_tutorials
//
//  Created by Bohdan Hutsul on 02.07.2020.
//  Copyright © 2020 Bohdan Hutsul. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            ImageView()
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Test message")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                        .underline(true, color: .red)
                }
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                    Spacer()
                    Text("test")
                        .font(.subheadline)
                }
                Spacer()
            }.padding(16)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
