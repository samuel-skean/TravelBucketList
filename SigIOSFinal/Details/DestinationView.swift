//
//  DestinationView.swift
//  sigiosfinal
//
//  Created by Quynh Tram on 1/28/24.
//

import SwiftUI

struct DestinationView: View {
    var destination: Destination
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: destination.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:100,height:100,alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth:.infinity,maxHeight:.infinity)
            }
            .frame(height:300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(destination.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(radius: 10)
                    .multilineTextAlignment(.center)
                    .padding()
                    
                    VStack(alignment: .leading, spacing: 30){
                        Text(destination.description)
                            .padding()
                    } .padding()
            }
            
        }
        .ignoresSafeArea(.container,edges: .top)
    }
}

struct DestinationView_Preview: PreviewProvider{
    static var previews: some View {
        DestinationView(destination: Destination.all[0])
    }
}
