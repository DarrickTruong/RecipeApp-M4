//
//  RecipeModel.swift
//  Lesson13RecipeListApp
//
//  Created by Darrick on 4/14/21.
//  Copyright © 2021 sTruong Code. All rights reserved.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
        
        
    }
    
}
