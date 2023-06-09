//
//  ProfileHost.swift
//  projectTestSwiftUi
//
//  Created by Ehsan Rahimi on 6/8/23.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    var body: some View {
        Text("Profile for: \(draftProfile.username)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
