//
//  DestinationCard.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct DestinationCard: View {
    var destination: Destination
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: destination.image)){ image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment:.bottom){
                        Text(destination.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:40,height:40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .overlay(alignment:.bottom){
                        Text(destination.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            }
        }
        
        .frame(width:160, height: 217, alignment: .top)
        .background()
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15)
    }
}

struct DestinationCardPreviews: PreviewProvider {
    static var previews: some View {
        DestinationCard(destination: Destination.all[0])
    }
}
