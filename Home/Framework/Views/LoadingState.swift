//
//  LoadingState.swift
//  Home
//
//  Created by Petros Efthymiou on 03/02/2022.
//

import Foundation
import SwiftUI

struct LoadingState : View {
    
    var body: some View {
        VStack {
            ProgressView().padding(.bottom)
            Text("Loading...")
        }
    }
}
