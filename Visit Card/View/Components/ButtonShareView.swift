//
//  ButtonShareView.swift
//  Visit Card
//
//  Created by Sebastien Besse on 04/09/2024.
//

import SwiftUI

struct ButtonShareView: View {
    var body: some View {
        Button(action: {
            guard let messageAppURL = URL(string: "sms:&body=Bonjour,\nCliquez ici pour voir mon GitHub : https://github.com/Sebastien-besse\nA bientôt,\nSébastien")
            else { return }
            if UIApplication.shared.canOpenURL(messageAppURL) {
                UIApplication.shared.open(messageAppURL)
            }
        }, label: {
            HStack{
                Text("Partager")
                Image(systemName: "arrow.up.right")
            }
            
        })
    }
}

#Preview {
    ButtonShareView()
}
