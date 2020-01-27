//
//  Seasoning.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/24.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

enum SeasoningForm {
    case liquid
    case solid
    case other
}

enum SeasoningTaste {
    case sweet
    case salty
    case spicy
    case sour
    case bitter
    case umami
    case other
}

struct Seasoning: FoodStaff, Identifiable {
    let id: UUID
    let name: String
    let form: SeasoningForm
    let tastes: [SeasoningTaste]
    var amount: Int?
    var unit: String
}
