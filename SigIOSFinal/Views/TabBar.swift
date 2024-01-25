//
//  TabBar.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            DestinationsView()
            
                .tabItem {
                    Label("Destinations", systemImage: "list.bullet")
                }
            
            CategoriesView()
            
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            BucketListView()
            
                .tabItem {
                    Label("Bucket List", systemImage: "pencil")
                }
            
            ProfileView()
            
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
            
            MapView()
            
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        }
    }
}

#Preview {
    TabBar()
}
