//
//  AddDestinationView.swift
//  SigIOSFinal
//
//  Created by Samuel Skean on 3/11/24.
//

import SwiftUI

struct AddDestinationView: View {
    // TODO: Is it idiomatic to manifestly type here or not?
    @State private var name = ""
    @State private var selectedCategory = Category.vacation
    @State private var description = ""
    @State private var location = ""
    @State private var date = ""
    @State private var navigateToDestination = false
    
    @Environment(\EnvironmentValues.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Name")) {
                    TextField("Trip Name:", text: $name)
                    Text(name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                    
                }
                
                Section(header: Text("Description")) {
                    TextField("Itinerary:", text: $description)
                    
                }
                
                Section(header: Text("Location")) {
                    TextField("Location:", text: $location)

                }
                
                Section(header: Text("Date")) {
                    TextField("Date:", text: $date)

                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem {
                    NavigationLink(isActive: $navigateToDestination) {
                        DestinationView(destination:
                                            Destination.all.sorted {$0.date > $1.date}[0])
                        .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            navigateToDestination = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    
                    .disabled(name.isEmpty || description.isEmpty || location.isEmpty || date.isEmpty)
                }
            })
            .navigationTitle("New Destinations")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddDestinationView()
}
