//
//  SwiftUIView.swift
//  Lesson13RecipeListApp
//
//  Created by Darrick on 4/19/21.
//  Copyright © 2021 sTruong Code. All rights reserved.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            
            Text("Featured View")
                .tabItem{
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
            }
            
            RecipeListView()
                .tabItem{
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Recipes")
                    }
            }
            
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
