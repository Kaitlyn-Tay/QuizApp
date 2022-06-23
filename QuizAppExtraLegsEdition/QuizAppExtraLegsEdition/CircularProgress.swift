//
//  CircularProgress.swift
//  QuizAppExtraLegsEdition
//
//  Created by FAITH CHONG RUI EN stu on 23/6/22.
//

import SwiftUI

struct CircularProgress: View {
    
    var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.2)
                .foregroundColor(.cyan)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: .init(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(.cyan)
                .rotationEffect(Angle(degrees: 270))
        }
    }
}

struct CircularProgress_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgress(progress: 0.25)
    }
}
