//
//  Liquid.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/28.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

enum LiquidTaste {
    case unselected
    case sweet
    case salty
    case spicy
    case sour
    case fragrance
    case oily
    case alcohol
    case other
}

enum LiquidColor {
    case unselected
    case white
    case red
    case yellow
    case brown
    case black
    case green
    case transparent
}

struct Liquid: FoodStaff, Identifiable {
    let id: UUID
    let name: String
    let colors: [LiquidColor]
    let taste: LiquidTaste
    var amount: Int?
    var unit: String
}
