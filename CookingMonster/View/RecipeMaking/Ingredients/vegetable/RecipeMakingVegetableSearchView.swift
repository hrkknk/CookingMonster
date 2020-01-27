//
//  RecipeMakingVegetableSearchView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/21.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingVegetableSearchView: View {
    @EnvironmentObject var sharedData: SharedData

    // TODO: DBから取得
    let vegetables: [Vegetable] = [
        Vegetable(id: UUID(), name: "ピーマン", colors: [.green], type: .fruit, unit: "個"),
        Vegetable(id: UUID(), name: "キャベツ", colors: [.green], type: .leaf, unit: "個"),
        Vegetable(id: UUID(), name: "とうもろこし", colors: [.yellow], type: .fruit, unit: "本"),
        Vegetable(id: UUID(), name: "大根", colors: [.white], type: .root, unit: "本"),
        Vegetable(id: UUID(), name: "なす", colors: [.purple], type: .fruit, unit: "本"),
        Vegetable(id: UUID(), name: "トマト", colors: [.red], type: .fruit, unit: "個"),
        Vegetable(id: UUID(), name: "しめじ", colors: [.brown, .white], type: .mushroom, unit: "株")
    ]

    var body: some View {
        VStack {
            NavigationView {
                List (sharedData.vegetableSearchFilter.apply(vegetables: vegetables)) { vegetable in
                    Text(vegetable.name).onTapGesture {
                        self.sharedData.selectedIngredient = Ingredient(id: vegetable.id, name: vegetable.name, type: .vegetable, amount: 1, unit: vegetable.unit)
                        self.sharedData.displayedView = .recipeMakingAddIngredient
                    }
                }.navigationBarTitle("野菜をさがす")
            }

            Button(action: {
            }) {
                Text("戻る").onTapGesture {
                    self.sharedData.displayedView = .recipeMakingVegetables
                }
            }
        }
    }
}

struct RecipeMakingVegetableSearchView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingVegetableSearchView()
    }
}
