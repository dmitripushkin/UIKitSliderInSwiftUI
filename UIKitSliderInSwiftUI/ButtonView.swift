//
//  ButtonView.swift
//  UIKitSliderInSwiftUI
//
//  Created by Повелитель on 09.11.2021.
//

import SwiftUI

struct ButtonView: View {
    let buttonTitle: String
    let buttonAction: () -> Void
    
    
    var body: some View {
        Button(action: buttonAction) {
            Text(buttonTitle)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "do something", buttonAction: {})
    }
}
