//
//  Seasoning.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/24.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

enum SeasoningForm {
    case unselected
    case liquid
    case solid
    case powder
    case other
}

struct Seasoning: FoodStaff, Identifiable {
    let id: UUID
    let name: String
    let form: SeasoningForm
    var amount: Int?
    var unit: String
}
