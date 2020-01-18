//
//  SharedData.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/18.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation
import SwiftUI

enum DisplayedView{
    case home
    case recipeMakingRoot
    case recipeMakingHome
    case recipeMakingIngredients
    case recipeMakingSeasoning
    case recipeMakingProcedure
    case recipeMakingMemo
}

class SharedData: ObservableObject {
    @Published var displayedView = DisplayedView.home
}
