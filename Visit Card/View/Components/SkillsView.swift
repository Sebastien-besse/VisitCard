//
//  SkillsView.swift
//  Visit Card
//
//  Created by Sebastien Besse on 05/06/2025.
//

import SwiftUI

struct SkillsView: View {
    @Binding var isDark : Bool
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            ForEach(userCard.competence) { competence in
                HStack {
                    Text(competence.skill)
                        .foregroundStyle(isDark ? .black : .white)
                        .bold()
                    Spacer()
                    ForEach(competence.level, id: \.self) { level in
                        level.image
                            .foregroundStyle(.twitch)
                            .opacity(0.8)
                    }
                }
            }
        }
    }
}

#Preview {
    SkillsView(isDark: .constant(false))
}
