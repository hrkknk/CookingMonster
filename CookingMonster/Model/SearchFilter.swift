//
//  SearchFilter.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/21.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

struct VegetableSearchFilter {
    var name: String = ""
    var type: VegetableType
    var color: VegetableColor

    func apply(vegetables: [Vegetable]) -> [Vegetable] {
        var filteredVegetables: [Vegetable] = vegetables

        switch name {
        case "":
            break
        default:
            filteredVegetables = filteredVegetables.filter({$0.name == name})
        }

        switch type {
        case .unselected:
            break
        default:
            filteredVegetables = filteredVegetables.filter({$0.type == type})
        }


        switch color {
        case .unselected:
            break
        default:
            filteredVegetables = filteredVegetables.filter({$0.colors.contains(color)})
        }

        return filteredVegetables
    }
}
