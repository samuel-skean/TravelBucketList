//
//  NewDestinationsView.swift
//  SigIOSFinal
//
//  Created by Samuel Skean on 4/11/24.
//

import SwiftUI

struct NewDestinationsView: View {
    @State private var showAddDestination = false
    var body: some View {
        // TODO: Maybe make this cleaner, make the form part of this instead of a card.
        NavigationStack {
            Button("Add destination manually") {
                showAddDestination = true
            }
            .navigationTitle("New Destinations")
        }
        .sheet(isPresented: $showAddDestination) {
            AddDestinationView()
        }
    }
    
}

#Preview {
    NewDestinationsView()
}
