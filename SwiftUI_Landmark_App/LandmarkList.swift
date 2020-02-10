//
//  LandmarkList.swift
//  SwiftUI_Landmark_App
//
//  Created by Ashwin Das on 10/02/20.
//  Copyright © 2020 Ashwin Das. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
       NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
