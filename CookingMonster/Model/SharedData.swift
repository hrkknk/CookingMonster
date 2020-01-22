//
//  SharedData.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/18.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

enum DisplayedView: String {
    case home = "Cooking Monster"
    //RecipeMaking
    case recipeMakingHome = "レシピをつくる"
    case recipeMakingIngredients = "材料をえらぶ"
    case recipeMakingAddIngredient = "材料を追加する"
    case recipeMakingVegetables = "野菜をえらぶ"
    case recipeMakingVegetableSearch = "野菜をさがす"
    case recipeMakingSeasoning = "調味料をえらぶ"
    case recipeMakingProcedure = "つくりかた"
    case recipeMakingMemo = "メモ"
}

class SharedData: ObservableObject {
    @Published var displayedView = DisplayedView.home
    @Published var vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .unselected)
    @Published var selectedIngredient: Ingredient?
    @Published var recipe = Recipe(id: nil, name: "", ingredients: [])
}
