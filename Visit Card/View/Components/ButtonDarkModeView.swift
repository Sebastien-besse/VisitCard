//
//  ButtonDarkModeView.swift
//  Visit Card
//
//  Created by Sebastien Besse on 05/06/2025.
//

import SwiftUI

struct ButtonDarkModeView: View {
    @Binding var isDark: Bool
    @State var rotation: Double = 0
    var body: some View {
        VStack{
            Button {
                withAnimation {
                    isDark.toggle()
                }
                withAnimation(Animation.easeOut(duration: 1.5)) {
                    rotation += 720
                }
            } label: {
                Image(systemName: isDark ? "moon.fill" : "sun.min.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(isDark ? .black : .white)
                    .frame(width: 35)
                    .rotationEffect(.degrees(rotation))
            }
            .contentShape(Rectangle())

        }
    }
}

#Preview {
    ButtonDarkModeView(isDark: .constant(true))
}
