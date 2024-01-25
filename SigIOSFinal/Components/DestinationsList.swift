//
//  DestinationsList.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 2/1/24.
//

import SwiftUI

struct DestinationsList: View {
    var destinations: [Destination]
    var body: some View {
        
        VStack {
            HStack {
                Text("\(destinations.count) \(destinations.count > 1 ? "destinations": "destination") ")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
                
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum:160), spacing: 15)], spacing: 15) {
                ForEach(destinations) { destination in
                    NavigationLink(destination: DestinationView(destination: destination)){
                        DestinationCard(destination: destination)
                    }
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    ScrollView{
        DestinationsList(destinations: Destination.all)
    }
}
