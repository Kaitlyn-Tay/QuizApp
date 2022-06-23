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
            VStack{
                
                Text("\(pointsCount)/5")
                    .bold()
                
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
