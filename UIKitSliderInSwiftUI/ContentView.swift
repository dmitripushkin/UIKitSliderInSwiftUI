//
//  ContentView.swift
//  UIKitSliderInSwiftUI
//
//  Created by Повелитель on 08.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Float = 50
    @State private var valueForQuestion = Float.random(in: 0...100)
    
    
    var body: some View {
        VStack(spacing: 40) {
            TaskQuestionLabelView(questionLabel: String(valueForQuestion))
            HStack {
                Text("0")
                UIKitSlider(value: $sliderValue)
                    .opacity(Double(sliderValue / 100))
                Text("100")
            }
            ButtonView(buttonTitle: "Проверь меня!", buttonAction: {})
            ButtonView(buttonTitle: "Начать заново", buttonAction: {})
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
