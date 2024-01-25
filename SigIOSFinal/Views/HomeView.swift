//
//  HomeView.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Home")
                .navigationTitle("Home")
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
