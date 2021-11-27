//
//  CountryChampionStruct.swift
//  Champions
//
//  Created by Aluno on 27/11/21.
//

import Foundation

struct CountryChampionStruct : Codable {
    let winner : String
    let cups : [WorldCupStruct]
}
