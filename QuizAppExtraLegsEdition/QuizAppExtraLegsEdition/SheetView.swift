//
//  SheetView.swift
//  Quiz App
//
//  Created by haoyuan on 23/6/22.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircularProgress(progress: CGFloat(pointsCount) / CGFloat(5))
                .frame(width: 150, height: 150)
                .padding()
                
                Text("\(pointsCount)/5")
                    .padding()

            }
            .navigationTitle("Results")
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
