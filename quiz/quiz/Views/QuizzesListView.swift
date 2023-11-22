//
//  ContentView.swift
//  quiz
//
//  Created by c119 DIT UPM on 22/11/23.
//

import SwiftUI

struct QuizzesListView: View {
    
    @State var quizzesModel = QuizzesModel()
    var body: some View {
        
        NavigationStack {
            List{
                ForEach(quizzesModel.quizzes) {quizItem in
                    
                    NavigationLink{
                        QuizItemPlayView(quizItem: quizItem)
                    } label: {
                        QuizItemRowView(quizItem: quizItem)
                    }
                    
                    
                }
            }
            .listStyle(.automatic)
            .navigationTitle("P4 Quizzes")
        }
        .onAppear(perform:{
            guard quizzesModel.quizzes.count == 0 else {return}
            quizzesModel.load()
        });
    }
    
}
#Preview {
    QuizzesListView()
}
