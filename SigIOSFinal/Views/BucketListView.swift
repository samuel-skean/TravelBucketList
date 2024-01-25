//
//  BucketListView.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct BucketListView: View {
    var body: some View {
        NavigationView {
            Text("Bucket List")
                .navigationTitle("Bucket List")
        }
        .navigationViewStyle(.stack)
    }
    }


#Preview {
    BucketListView()
}
