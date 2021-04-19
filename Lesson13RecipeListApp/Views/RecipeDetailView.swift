//
//  RecipeDetailView.swift
//  Lesson13RecipeListApp
//
//  Created by Darrick on 4/14/21.
//  Copyright © 2021 sTruong Code. All rights reserved.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment:.leading){
                
                
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    
                
                // MARK: Recipe Ingredients
                VStack(alignment:.leading) {
                    
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5)
                    ForEach(recipe.ingredients, id:\.self) { ingredient in
                        Text("• "+ingredient)
                            .padding(.bottom, 2)
                    }
                }.padding()
                
                Divider()
                
                // MARK: Recipe Directions
                VStack(alignment: .leading) {
                    
                    Text("Directions")
                        .font(.headline)
                        .padding(.bottom, 5)
                    ForEach(0..<recipe.directions.count, id:\.self) { index in
                        Text(String(index+1) + ". " + self.recipe.directions[index])
                            .padding([.bottom, .top], 2)
                        .fixedSize(horizontal: false, vertical: true)
                    }
                }.padding()
            }
        }.navigationBarTitle(recipe.name)
        
    }
}

//struct RecipeDetailView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        let model = RecipeModel()
//        return RecipeDetailView(recipe:model.recipes[0])
//    }
//}
