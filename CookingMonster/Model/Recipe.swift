//
//  Recipe.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/22.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

struct Recipe: Identifiable {
    let id: Int?
    var name: String
    var ingredients: [Ingredient]
    var seasonings: [Seasoning]?
    var procedures: [Procedure]
    var memos: [RecipeMemo]?
}
