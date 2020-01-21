//
//  SharedData.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/18.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

enum DisplayedView {
    case home
    //RecipeMaking
    case recipeMakingRoot
    case recipeMakingHome
    case recipeMakingIngredients
    case recipeMakingVegetables
    case recipeMakingVegetableSearch
    case recipeMakingSeasoning
    case recipeMakingProcedure
    case recipeMakingMemo
}

class SharedData: ObservableObject {
    @Published var displayedView = DisplayedView.home
    @Published var vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .unselected)
    @Published var recipe = Recipe()
}
