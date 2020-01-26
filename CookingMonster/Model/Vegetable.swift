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
    case brown
}

enum VegetableType {
    case unselected
    case leaf
    case root
    case fruit
    case mushroom
}

struct Vegetable: Identifiable {
    let id: Int
    let name: String
    let colors: [VegetableColor]
    let type: VegetableType
    let unit: String
}
