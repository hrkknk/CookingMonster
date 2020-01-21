//
//  Vegetable.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/21.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

enum VegetableColor {
    case unselected
    case red
    case yellow
    case green
    case white
    case purple
}

enum VegetableType {
    case unselected
    case leaf
    case root
    case fruit
}

struct Vegetable: Identifiable {
    var id: Int
    let name: String
    let colors: [VegetableColor]
    let type: VegetableType
}
