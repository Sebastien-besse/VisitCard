//
//  UserCardData.swift
//  Visit Card
//
//  Created by Sebastien Besse on 02/09/2024.
//

import Foundation

var userCard = UserCard(
    firstName: "Besse",
    lastName: "Sébastien",
    image: "Profil",
    profession: "Développeur iOS",
    competence: competences,
    description: "On the road to my retraining in iOS development",
    statut: "Open to work",
    email: "sebastien_besse@yahoo.com",
    site: "www.monsite.fr",
    gitHub: "https://github.com/Sebastien-besse"
)

var competences = [
    
    Competence(skill: "SwiftUI", level: [.starFilled, .starFilled, .starFilled, .starFilled, .starLeading]),
    Competence(skill: "Xcode", level: [.starFilled, .starFilled, .starFilled, .starLeading, .star]),
    Competence(skill: "GitHub", level: [.starFilled, .starFilled, .starFilled, .starFilled, .star])

]
