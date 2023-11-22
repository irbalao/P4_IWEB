//
//  QuizItemRowView.swift
//  quiz
//
//  Created by c119 DIT UPM on 22/11/23.
//

import SwiftUI

struct QuizItemRowView: View {
    var quizItem: QuizItem
    var body: some View {
        
        let url = quizItem.attachment?.url
        
        AsyncImage(url: url){ phase in
            if url == nil {
                Color.yellow
            }else if let image = phase.image {
                image.resizable() //Devuelve la imagen descargada
            }else if phase.error != nil{
                Color.red //Devuelve lo que hay que mostrar en caso de error
            }else {
                ProgressView() //Se usa como placeholder durante la descarga
            }
        }
            .frame(width: 120,height: 120)
            .scaledToFill()
            .clipShape(RoundedRectangle(cornerRadius: 100))
            .overlay{
                Circle().stroke(Color.yellow, lineWidth: 4)
                    .shadow(color: .blue, radius: 5, x: 0.0, y: 0.0)
            }
        
        Text(quizItem.question)
        Image(quizItem.favourite ? "Estrella_Amarilla" : "Estrella_Gris")
            .resizable()
            .frame(width: 32.0, height: 32.0)
    }

}
#Preview {
    var model: QuizzesModel{
        var m = QuizzesModel()
        m.load()
        return m
    }
    
    return NavigationStack{
        QuizItemRowView(quizItem: model.quizzes[1])
    }
}
