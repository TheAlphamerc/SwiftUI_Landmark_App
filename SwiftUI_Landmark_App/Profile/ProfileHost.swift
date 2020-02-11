//
//  ProfileHost.swift
//  SwiftUI_Landmark_App
//
//  Created by Ashwin Das on 12/02/20.
//  Copyright © 2020 Ashwin Das. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
  
    @State var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading,spacing: 20){
              ProfileSummary(profile: draftProfile)
        }
    .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
