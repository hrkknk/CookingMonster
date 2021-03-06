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

struct Ingredient: FoodStaff, Identifiable, Hashable {
    let id: UUID
    let name: String
    let type: IngredientType
    var amount: Int?
    var unit: String
}
