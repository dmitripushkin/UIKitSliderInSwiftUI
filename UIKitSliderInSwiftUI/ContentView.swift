//
//  ContentView.swift
//  UIKitSliderInSwiftUI
//
//  Created by Повелитель on 08.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Float = 50
    @State private var targetValue = lround(Double.random(in: 0...100))
    @State private var alertIsPresented = false
    
    
    var body: some View {
        VStack(spacing: 40) {
            TaskQuestionLabelView(questionLabel: String(targetValue))
            HStack {
                Text("0")
                UIKitSlider(value: $sliderValue)
                    .opacity(Double(computeScore()) / 100)
                Text("100")
            }
            ButtonView(
                buttonTitle: "Проверь меня!",
                buttonAction: { alertIsPresented.toggle() }
            )
                .alert(
                    "Your score",
                    isPresented: $alertIsPresented,
                    actions: { }
                )
            {
                Text("\(computeScore())")
            }
            ButtonView(
                buttonTitle: "Начать заново",
                buttonAction: { setNewTargetValue() }
            )
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(sliderValue)))
        return 100 - difference
    }
    
    private func setNewTargetValue() {
        targetValue = lround(Double.random(in: 0...100))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
