//
//  Ingredient.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/22.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

enum IngredientType {
    case vegetable
    case meat
    case fish
    case grains
    case other
}

struct Ingredient: Identifiable {
    let id: Int
    let name: String
    let type: IngredientType
    let amount: Int?
}
