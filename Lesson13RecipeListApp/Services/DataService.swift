//
//  DataService.swift
//  Lesson13RecipeListApp
//
//  Created by Darrick on 4/14/21.
//  Copyright © 2021 sTruong Code. All rights reserved.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // parset local json file, set recipes property, get url path to file, create url object, create data object, decode data with json decoder, return recipes
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for recipe in recipeData {
                    recipe.id = UUID()
                }
                
                return recipeData
                
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        return [Recipe]()
    }
}
