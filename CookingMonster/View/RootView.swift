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
            containedView()
        }
    }

    func containedView() -> AnyView {
        switch sharedData.displayedView {
        case .recipeMakingHome: return AnyView(RecipeMakingHomeView())
        case .recipeMakingIngredients: return AnyView(RecipeMakingIngredientsView())
        case .recipeMakingSeasoning: return AnyView(RecipeMakingSeasoningView())
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
