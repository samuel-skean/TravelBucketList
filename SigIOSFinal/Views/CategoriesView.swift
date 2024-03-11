//
//  CategoriesView.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(Category.allCases) { category in 
                    NavigationLink(destination: CategoryView(category: category)) {
                        Text(category.rawValue)
                    }
                }
            }
            .navigationTitle("Categories")
        }
    }
    }


#Preview {
    CategoriesView()
}
