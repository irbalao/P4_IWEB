//
//  QuizItemPlayView.swift
//  quiz
//
//  Created by c119 DIT UPM on 22/11/23.
//

import SwiftUI

struct QuizItemPlayView: View {
    
    var quizItem: QuizItem
    
    var body: some View {
        VStack {
            Text(quizItem.question)
        }
        .navigationTitle("Playing")
    }
}

#Preview {
    var model: QuizzesModel{
        var m = QuizzesModel()
        m.load()
        return m
    }
    
    return NavigationStack{
        QuizItemPlayView(quizItem: model.quizzes[0])
    }
}

