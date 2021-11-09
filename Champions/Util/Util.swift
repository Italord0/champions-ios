//
//  Util.swift
//  Champions
//
//  Created by Aluno on 09/11/21.
//

import Foundation

class Util {
    
    static func loadWorldCups() -> [WorldCupStruct] {
        var result = [WorldCupStruct]()
        do {
        let fileURL = Bundle.main.url(forResource: "winners", withExtension: ".json")!
        let jsonData = try! Data(contentsOf: fileURL)
            do {
                result = try JSONDecoder().decode([WorldCupStruct].self, from: jsonData)
            }catch {
                print(error)
            }
        }
        return result
    }
}
