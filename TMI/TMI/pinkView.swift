//
//  pinkView.swift
//  TMI
//
//  Created by Tommy Song on 7/6/24.
//

import SwiftUI

struct pinkView: View {
    var tmiModel = modelQuestion()
    @State var question : String = "Question"
    @State private var animatedText: String = ""
    @State var wpm : Double = 0.05
    var body: some View {
        VStack {
            Text(animatedText)
                .font(Font.custom("Augent",
                                  size: 36))
                .multilineTextAlignment(.center)
                .frame(maxHeight: .infinity, alignment: .center)
            
            Button(action: {
                question = tmiModel.generateQuestion(color: "pink")
                animatedText = ""
                for (index, character) in question.enumerated() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * wpm) {
                        animatedText.append(character)
                        UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    }
                }
            }) {
                Text("Ask a question")
                    .font(Font.custom("Augent", size: 25))
                    .padding(25)
                    .foregroundColor(.white)
                    .background(.purple)
                    .cornerRadius(100)
            }
            .shadow(color: .blue, radius: 2, y: 5)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, 100.0)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.purple.opacity(0.3)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    pinkView()
}
