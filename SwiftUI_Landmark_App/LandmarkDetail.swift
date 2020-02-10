//
//  LandmarkDetail.swift
//  SwiftUI_Landmark_App
//
//  Created by Ashwin Das on 10/02/20.
//  Copyright © 2020 Ashwin Das. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
     var body: some View {
         VStack{
             MapView(coordinate: landmark.locationCoordinate)
//                             .edgesIgnoringSafeArea(.top)
                             .frame(height: 300)

                         CircleImage(image: landmark.image)
                             .offset(y: -130)
                             .padding(.bottom, -130)

                         VStack(alignment: .leading) {
                             Text(landmark.name)
                                 .font(.title)

                             HStack(alignment: .top) {
                                 Text(landmark.park)
                                     .font(.subheadline)
                                 Spacer()
                                 Text(landmark.state)
                                     .font(.subheadline)
                             }
                         }
                 .padding()
              Spacer()
          }
         .navigationBarTitle(Text(landmark.name))
      }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
