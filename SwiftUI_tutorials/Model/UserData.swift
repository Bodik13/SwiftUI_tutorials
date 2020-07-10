//
//  UserData.swift
//  SwiftUI_tutorials
//
//  Created by Bohdan Hutsul on 07.07.2020.
//  Copyright © 2020 Bohdan Hutsul. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData
}
