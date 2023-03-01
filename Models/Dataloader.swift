//
//  Dataloader.swift
//  JsonStorage
//
//  Created by Phipps A (FCES) on 01/03/2023.
//

import Foundation

@State var expenses: [Expense] = load("data.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

/*

    
    var expenseData = [Expense]()
     var expenses: [Expense] = DataLoader().expenseData
    
    init(){
        load()
    }
    
    func load(){
        if let fileLocation = Bundle.main.url(forResource: "data", withExtension: "json"){
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Expense].self, from: data)
                
                self.expenseData = dataFromJson
            }
            catch{
                print(error)
            }
        }
    }
    
    func save(){
        
    }
    
}

*/
    
    
    

