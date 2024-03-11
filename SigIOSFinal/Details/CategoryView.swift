//
//  SwiftUIView.swift
//  SigIOSFinal
//
//  Created by Samuel Skean on 3/11/24.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var destinations: [Destination] {
        return Destination.all.filter {
            $0.categories.contains(category.rawValue)
        }
    }
    var body: some View {
        ScrollView {
            DestinationsList(destinations: destinations)
        }
        .navigationTitle(category.rawValue)
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.vacation)
    }
}
