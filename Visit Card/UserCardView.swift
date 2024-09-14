//
//  UserCardView.swift
//  Visit Card
//
//  Created by Sebastien Besse on 02/09/2024.
//

import SwiftUI

struct UserCardView: View {
    var body: some View {
        
        
            VStack(alignment: .center){
                Ellipse()
                    .fill(Color.purple.opacity(0.5))
                    .frame(width: 500, height: 200)
                    .position(x: UIScreen.main.bounds.width / 2, y: 30)
                    .ignoresSafeArea()
                    .overlay {
                        Image(userCard.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .offset(y: -20)
                        Text("\(userCard.lastName) \(userCard.firstName)")
                            .font(.title)
                            .bold()
                            .offset(y: 90)
                            .listRowSeparator(.hidden)
                    }
                    .listRowSeparator(.hidden)
                
                // Centrer le nom et le positionner plus haut
              
                
                HStack{
                    Text(userCard.profession)
                        .foregroundStyle(.secondary)
                        .bold()
                    Spacer()
                    Text(userCard.statut)
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .background(Color.purple.opacity(0.8))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding(.vertical)
                


                    
                  
                VStack(alignment: .leading){
                    
                    Rectangle()
                        .foregroundStyle(.gray.opacity(0.5))
                        .frame(width: 350, height: 81)
                        .overlay {
                            Rectangle()
                                .foregroundStyle(Color.white.opacity(0.9))
                                .frame(width: 348, height: 79)
                                .clipShape(RoundedRectangle(cornerRadius: 10))  // Coins arrondis
                            Text(userCard.description)
                                .font(.system(size: 15))
                                .foregroundStyle(.black)
                                .padding()
                        }
                        
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.vertical)
                    
                    VStack(alignment: .leading, spacing: 10){
                        LinkView(link: userCard.email, symbole: "envelope.circle.fill")
                        LinkView(link: userCard.site!, symbole: "safari.fill")
                        LinkView(link: userCard.gitHub!, symbole: "link.circle.fill")
                    }
                        
                    VStack(alignment: .center, spacing: 10) {
                        ForEach(userCard.competence) { competence in
                            HStack {
                                Text(competence.skill)
                                    .bold()
                                Spacer()
                                ForEach(competence.level, id: \.self) { level in
                                    level.image
                                        .foregroundStyle(.purple)
                                        .opacity(0.8)
                                }
                            }
                        }
                    }
                    .padding(.vertical)
                }
                
                HStack{
                    Spacer()
                    ButtonShareView()
                        .font(.headline)
                        .bold()
                        .padding(10)
                        .foregroundStyle(.white)
                        .background(Color.purple.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                    Spacer()
                }
                .padding()
            }
            .padding(.horizontal)
       
    }
    
}
#Preview {
    UserCardView()
}

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


