//
//  Home.swift
//  SwiftUI_Landmark_App
//
//  Created by Ashwin Das on 11/02/20.
//  Copyright © 2020 Ashwin Das. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var  categories: [String: [Landmark]]{
        Dictionary(
            grouping: landmarkData,
            by:{ $0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView{
            List{
                ForEach(categories.keys.sorted(), id: \.self){key in
                    Text(key)
                }
            }
            .navigationBarTitle(Text("Fearured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
