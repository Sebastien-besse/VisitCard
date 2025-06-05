//
//  Competence.swift
//  Visit Card
//
//  Created by Sebastien Besse on 05/06/2025.
//

import Foundation
import SwiftUI

class Competence: Identifiable{
    
    var skill: String
    var level: [Level]

    init(skill: String, level: [Level]) {
        self.skill = skill
        self.level = level
       
    }

}


enum Level {
    case star
    case starFilled
    case starLeading
    
    var image: Image{
        switch self{
        case .star:
            Image(systemName: "star")
        case .starFilled:
            Image(systemName: "star.fill")
        case .starLeading:
            Image(systemName: "star.leadinghalf.fill")
        }
    }
}
