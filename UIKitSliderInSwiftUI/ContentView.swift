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
        HStack {
            Text(String(format: "%.f", sliderValue))
                .frame(width: 30)
            UIKitSlider(value: $sliderValue)
                .opacity(Double(sliderValue / 100))
            Text(String(format: "%.f", sliderValue))
                .frame(width: 30)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
