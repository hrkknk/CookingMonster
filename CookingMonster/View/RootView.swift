//
//  RootView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/16.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var sharedData: SharedData

    var body: some View {
        VStack {
            Text("\(sharedData.displayedView.rawValue)")
            Spacer()
            containedView()
            Spacer()
        }
    }

    func containedView() -> AnyView {
        switch sharedData.displayedView {
        //RecipeMaking
        case .recipeMakingHome: return AnyView(RecipeMakingHomeView())
        case .recipeMakingIngredients: return AnyView(RecipeMakingIngredientsView())
        case .recipeMakingAddIngredient: return AnyView(RecipeMakingAddIngredientView())
        case .recipeMakingVegetable: return AnyView(RecipeMakingVegetableView())
        case .recipeMakingVegetableSearch: return AnyView(RecipeMakingVegetableSearchView())
        case .recipeMakingSeasoning: return AnyView(RecipeMakingSeasoningView())
        case .recipeMakingLiquid: return AnyView(RecipeMakingLiquidView())
        case .recipeMakingLiquidSearch: return AnyView(RecipeMakingLiquidSearchView())
        case .recipeMakingProcedure: return AnyView(RecipeMakingProcedureView())
        case .recipeMakingMemo: return AnyView(RecipeMakingMemoView())
        default: return AnyView(HomeView())
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            RootView()
                .environmentObject(SharedData())
        }
    }
}
