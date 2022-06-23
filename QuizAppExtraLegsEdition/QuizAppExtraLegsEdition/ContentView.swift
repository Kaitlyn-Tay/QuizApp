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
                Color(.systemBackground)
                VStack(alignment: .leading) {
                    Text(TestQuizQuestions[questionIndex].title)
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
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
                                Text(TestQuizQuestions[questionIndex].option1)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(.red)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
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
                                Text(TestQuizQuestions[questionIndex].option2)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
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
                                }                        } label: {
                                    Text(TestQuizQuestions[questionIndex].option3)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            Button {
                                if TestQuizQuestions[questionIndex].correctAns == 4 {
                                    alertMessage = "Correct."
                                    isAlertShown = true
                                    pointsCount += 1
                                } else {
                                    alertMessage = "Incorrect."
                                    isAlertShown = true
                                }                        } label: {
                                    Text(TestQuizQuestions[questionIndex].option4)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(.yellow)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
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
