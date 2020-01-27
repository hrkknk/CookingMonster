//
//  FoodStaff.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/28.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

protocol FoodStaff {
    var id: UUID { get }
    var name: String { get }
    var amount: Int? { get set }
    var unit: String { get set }
}
