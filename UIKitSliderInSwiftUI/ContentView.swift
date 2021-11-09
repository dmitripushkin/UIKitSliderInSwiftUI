//
//  ContentView.swift
//  UIKitSliderInSwiftUI
//
//  Created by Повелитель on 08.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Float = 50
    
    
    var body: some View {
        VStack(spacing: 40) {
            TaskQuestionLabelView(questionLabel: "100")
            HStack {
                Text("0")
                UIKitSlider(value: $sliderValue)
                    .opacity(Double(sliderValue / 100))
                Text("100")
            }
            ButtonView(buttonTitle: "Проверь меня!", buttonAction: {})
            ButtonView(buttonTitle: "Начать заново", buttonAction: {})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
