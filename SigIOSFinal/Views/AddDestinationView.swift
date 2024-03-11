//
//  AddDestinationView.swift
//  SigIOSFinal
//
//  Created by Samuel Skean on 3/11/24.
//

import SwiftUI

struct AddDestinationView: View {
    @State private var name: String = ""
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Name")) {
                    TextField("Trip Name:", text: $name)
                    Text(name)
                }
                
                Section(header: Text("Description")) {
                    
                }
                
                Section(header: Text("Location")) {
                    
                }
                
                Section(header: Text("Date")) {
                    
                }
                
                Section(header: Text("URL")) {
                    
                }
                
                Section(header: Text("Category")) {
                    
                }
                
            }
            .navigationTitle("New Destinations")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddDestinationView()
}
