//
//  WorldCupStruct.swift
//  Champions
//
//  Created by Aluno on 09/11/21.
//

import Foundation

struct WorldCupStruct : Codable {
    let year : Int
    let country : String
    let winner : String
    let vice : String
    let winnerScore : String
    let viceScore : String
    let matches : [MatchStruct]
}
