//
//  UserCardView.swift
//  Visit Card
//
//  Created by Sebastien Besse on 02/09/2024.
//

import SwiftUI

struct UserCardView: View {
    @State var isDark: Bool = true
    let description = "Actuellement en formation en développement iOS 💻"
    var body: some View {
        VStack(alignment: .center){
            Ellipse()
                .fill(isDark ? Color.orange.opacity(0.2) : .twitch)
                .frame(width: 500, height: 200)
                .position(x: UIScreen.main.bounds.width / 2, y: 30)
                .ignoresSafeArea()
                .overlay {
                    ButtonDarkModeView(isDark: $isDark)
                        .offset(x: 150 ,y: -90)
                    Image(userCard.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150)
                        .clipShape(Circle())
                        .offset(y: -20)
                    Text("\(userCard.lastName) \(userCard.firstName)")
                        .font(.title)
                        .foregroundStyle(isDark ? .black : .white)
                        .bold()
                        .offset(y: 90)
                        .listRowSeparator(.hidden)
                }
                .listRowSeparator(.hidden)
           
            activity(profession: userCard.profession, status: userCard.statut)
            
            VStack(alignment: .leading){
                    
                descriptionView(description: isDark ? description : userCard.description )

                VStack(alignment: .leading, spacing: 10){
                    LinkView(isDark: $isDark, link: userCard.email, symbole: "envelope.circle.fill")
                    LinkView(isDark: $isDark, link: userCard.site!, symbole: "safari.fill")
                    LinkView(isDark: $isDark, link: userCard.gitHub!, symbole: "link.circle.fill")
                }
                .padding()
                
                SkillsView(isDark: $isDark)
                    .padding()
            }
            HStack{
                Spacer()
                customButtonShare()
                Spacer()
            }
            .padding()
        }
        .padding(.horizontal)
        .background(isDark ? .white : .black)
    }
    
    func customButtonShare() -> some View{
        ButtonShareView()
            .font(.headline)
            .foregroundStyle(isDark ? .orange.opacity(0.8) : .white)
            .bold()
            .padding(10)
            .background(isDark ? Color.orange.opacity(0.2) : .twitch)
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
    
    func descriptionView(description: String) -> some View {
        Rectangle()
            .fill(.gray.opacity(0.5))
            .frame(width: 350, height: 81)
            .overlay {
                Rectangle()
                    .fill(isDark ? Color.white.opacity(0.9) : .twitch)
                    .frame(width: 348, height: 79)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text(description)
                    .font(.system(size: 22))
                    .foregroundStyle(isDark ? .black : .white)
                    
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
    }
    
    func activity(profession: String, status: String) -> some View{
        HStack{
            Text(profession)
                .foregroundStyle(isDark ? .gray.opacity(0.8) : .white)
                .bold()
            Spacer()
            Text(status)
                .font(.headline)
                .foregroundStyle(.white)
                .padding(8)
                .background(.twitch)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding()
    }
}
#Preview {
    UserCardView()
}
