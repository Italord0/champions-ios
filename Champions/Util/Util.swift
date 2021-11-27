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
    
    static func loadWinners() -> [CountryChampionStruct] {
        var result = [CountryChampionStruct]()
        var winners = [String]()
        let cups = loadWorldCups()
        
        cups.forEach { cup in
            winners.append(cup.winner)
        }
        
        winners = removeRepeatingStrings(from: winners)
        
        winners.forEach { winner in
            var cupsWon = [WorldCupStruct]()
            cups.forEach { cup in
                if (winner == cup.winner) {
                    cupsWon.append(cup)
                }
            }
            result.append(CountryChampionStruct(winner: winner, cups: cupsWon))
        }
        
        return result
    }
    
    static func removeRepeatingStrings(from items: [String]) -> [String] {
        let uniqueItems = NSOrderedSet(array: items)
        return (uniqueItems.array as? [String]) ?? []
    }
}
