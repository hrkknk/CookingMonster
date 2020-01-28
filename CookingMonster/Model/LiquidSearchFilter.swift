//
//  LiquidSearchFilter.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/28.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

struct LiquidSearchFilter {
    var name: String = ""
    var color: LiquidColor
    var taste: LiquidTaste

    func apply(liquids: [Liquid]) -> [Liquid] {
        var filteredLiquids: [Liquid] = liquids

        switch name {
        case "":
            break
        default:
            filteredLiquids = filteredLiquids.filter({$0.name == name})
        }

        switch taste {
        case .unselected:
            break
        default:
            filteredLiquids = filteredLiquids.filter({$0.taste == taste})
        }


        switch color {
        case .unselected:
            break
        default:
            filteredLiquids = filteredLiquids.filter({$0.colors.contains(color)})
        }

        return filteredLiquids
    }
}
