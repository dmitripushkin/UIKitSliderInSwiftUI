//
//  TaskQuestionLabelView.swift
//  UIKitSliderInSwiftUI
//
//  Created by Повелитель on 09.11.2021.
//

import SwiftUI

struct TaskQuestionLabelView: View {
    let questionLabel: String
    
    var body: some View {
        Text("Подвиньте слайдер как можно ближе к: \(questionLabel)")
    }
}

struct TaskQuestionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        TaskQuestionLabelView(questionLabel: "100")
    }
}
