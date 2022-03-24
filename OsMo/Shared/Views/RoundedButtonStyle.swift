//
//  RoundedButtonStyle.swift
//  OsMo
//
//  Created by Alexey Sirotkin on 22.03.2022.
//

import SwiftUI

struct RoundedButtonStyle: ButtonStyle {
    var backgroundColor = Color.black
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(backgroundColor)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(configuration.isPressed ? .white : .gray, lineWidth: 2)
            )
            .font(.body)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .padding(.vertical,6)

    }
}
