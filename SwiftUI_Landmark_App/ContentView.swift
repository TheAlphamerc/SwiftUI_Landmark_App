//
//  ContentView.swift
//  SwiftUI_Landmark_App
//
//  Created by Ashwin Das on 10/02/20.
//  Copyright © 2020 Ashwin Das. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       VStack{
            MapView()
                .frame(height:300)
             CircleImage()
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading){
                      
                       Text("Turtle Rock")
                                  .font(.title)
                                  .foregroundColor(.green)
                       HStack{
                           Text("Joshua Tree National Park")
                                                 .font(.subheadline)
                                                 
                           Text("California")
                                       .font(.subheadline)
                                               
                       }
                   }
               .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
