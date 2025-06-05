//
//  LinkView.swift
//  Visit Card
//
//  Created by Sebastien Besse on 24/09/2024.
//

import SwiftUI

struct LinkView: View {
    @Binding var isDark: Bool
    let link: String
    let symbole: String
    
    var body: some View {
        HStack{
            Image(systemName: symbole)
                    .font(.largeTitle)
                    .symbolRenderingMode(isDark ? .hierarchical : .monochrome)
                    .foregroundStyle(isDark ? .orange : .twitch)
                    .opacity(0.5)
            
            Text(link)
                .foregroundStyle(isDark ? .black : .white)
        }
    }
}

#Preview {
    LinkView(isDark: .constant(true), link: userCard.email, symbole: "envelope.circle.fill")
}
