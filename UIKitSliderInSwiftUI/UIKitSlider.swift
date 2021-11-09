//
//  UIKitSlider.swift
//  UIKitSliderInSwiftUI
//
//  Created by Повелитель on 08.11.2021.
//

import SwiftUI

struct UIKitSlider: UIViewRepresentable {
    @Binding var value: Float
    
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.value = value
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.thumbTintColor = .darkGray
        slider.tintColor = .gray
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.didDragged),
            for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = value
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
}

extension UIKitSlider {
    class Coordinator: NSObject {
        @Binding var value: Float
        
        init(value: Binding<Float>) {
            self._value = value
        }
        
        @objc func didDragged(_ sender: UISlider) {
            value = roundf(sender.value)
        }
    }
}

struct UIKitSlider_Previews: PreviewProvider {
    static var previews: some View {
        UIKitSlider(value: .constant(50))
    }
}

