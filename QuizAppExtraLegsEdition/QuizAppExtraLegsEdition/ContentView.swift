//
//  QuizView.swift
//  Quiz App
//
//  Created by haoyuan on 23/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var questionIndex = 0
    @State var isAlertShown = false
    @State var alertMessage = ""
    @State var showSheet = false
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.white, .cyan], startPoint: .top, endPoint: .leading)
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    ProgressView(value: Double(questionIndex),
                                             total: Double(TestQuizQuestions.count))
                                    .padding()
                    Text(TestQuizQuestions[questionIndex].title)
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(.gray)
                        .cornerRadius(10)
                    VStack(alignment: .center) {
                        HStack{
                            Button {
                                if TestQuizQuestions[questionIndex].correctAns == 1{
                                    alertMessage = "Correct."
                                    isAlertShown = true
                                    pointsCount += 1
                                } else {
                                    alertMessage = "Incorrect."
                                    isAlertShown = true
                                }
                            } label: {
                                Image(systemName: "square.fill")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                Text(TestQuizQuestions[questionIndex].option1)
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    
                            }
                            .frame(width: 200, height: 200)
                            .background(.red)
                            .cornerRadius(10)

                            Button {
                                if TestQuizQuestions[questionIndex].correctAns == 2{
                                    alertMessage = "Correct."
                                    isAlertShown = true
                                    pointsCount += 1
                                } else {
                                    alertMessage = "Incorrect."
                                    isAlertShown = true
                                }
                            } label: {
                                Image(systemName: "triangle.fill")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                Text(TestQuizQuestions[questionIndex].option2)
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .frame(width: 200, height: 200)
                            .background(.green)
                            .cornerRadius(10)

                        }
                        HStack{
                            Button {
                                if TestQuizQuestions[questionIndex].correctAns == 3{
                                    alertMessage = "Correct."
                                    isAlertShown = true
                                    pointsCount += 1
                                } else {
                                    alertMessage = "Incorrect."
                                    isAlertShown = true
                                }
                            } label: {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    Text(TestQuizQuestions[questionIndex].option3)
                                    .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            .frame(width: 200, height: 200)
                            .background(.blue)
                            .cornerRadius(10)

                            Button {
                                if TestQuizQuestions[questionIndex].correctAns == 4 {
                                    alertMessage = "Correct."
                                    isAlertShown = true
                                    pointsCount += 1
                                } else {
                                    alertMessage = "Incorrect."
                                    isAlertShown = true
                                }
                            } label: {
                                Image(systemName: "diamond.fill")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    Text(TestQuizQuestions[questionIndex].option4)
                                    .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            .frame(width: 200, height: 200)
                            .background(.yellow)
                            .cornerRadius(10)

                        }
                        
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("Question \(questionIndex + 1)")
            }
            .alert(alertMessage, isPresented: $isAlertShown){
                Button {
                    isAlertShown = false
                    if questionIndex == 4 {
                        showSheet = true
                    } else{
                        questionIndex += 1
                    }
                    
                } label:{
                    Text("Next Question")
                }
            }
        }
        .sheet(isPresented:$showSheet){
                SheetView()
            }
        }
    }


struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
