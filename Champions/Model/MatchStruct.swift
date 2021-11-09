//
//  MatchStruct.swift
//  Champions
//
//  Created by Aluno on 09/11/21.
//

import Foundation

struct MatchStruct : Codable {
    let stage: String
    let games : [GameStruct]
}
