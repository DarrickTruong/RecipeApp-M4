//
//  Ingredient.swift
//  Lesson13RecipeListApp
//
//  Created by Darrick on 4/20/21.
//  Copyright © 2021 sTruong Code. All rights reserved.
//

import Foundation

class Ingredient:Identifiable, Decodable {
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
