//
//  UserCard.swift
//  Visit Card
//
//  Created by Sebastien Besse on 02/09/2024.
//

import Foundation
import SwiftUI

class UserCard{
    var firstName: String
    var lastName: String
    var image: String
    var profession: String
    var description: String
    var competence: [Competence]
    var statut: String
    var email: String
    var site: String?
    var number: String?
    var gitHub: String?
    
    init(firstName: String, lastName: String, image: String, profession: String, competence: [Competence], description: String, statut: String, email: String, site: String? = nil, number: String? = nil, gitHub: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.image = image
        self.profession = profession
        self.description = description
        self.competence = competence
        self.statut = statut
        self.email = email
        self.site = site
        self.number = number
        self.gitHub = gitHub
    }
}
