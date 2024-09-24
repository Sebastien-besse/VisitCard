//
//  LinkView.swift
//  Visit Card
//
//  Created by Sebastien Besse on 24/09/2024.
//

import SwiftUI

struct LinkView: View {
    
    let link: String
    let symbole: String
    
    var body: some View {
        HStack{
            Image(systemName: symbole)
                    .font(.largeTitle)
                    .symbolRenderingMode(.hierarchical)
                    .foregroundStyle(.purple, .purple)
                    .opacity(0.5)
            
            Text(link)
        }
    }
}

#Preview {
    LinkView(link: userCard.email, symbole: "envelope.circle.fill")
}
