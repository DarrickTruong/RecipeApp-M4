//
//  Recipe.swift
//  Lesson13RecipeListApp
//
//  Created by Darrick on 4/14/21.
//  Copyright © 2021 sTruong Code. All rights reserved.
//

import Foundation

class Recipe:Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
}
