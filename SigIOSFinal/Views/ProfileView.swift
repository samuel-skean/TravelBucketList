//
//  ProfileView.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
            AddDestinationView()
        }
    }
    }


#Preview {
    ProfileView()
}
