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
        Vegetable(id: 0, name: "ピーマン", colors: [.green], type: .fruit, unit: "個"),
        Vegetable(id: 1, name: "キャベツ", colors: [.green], type: .leaf, unit: "個"),
        Vegetable(id: 2, name: "とうもろこし", colors: [.yellow], type: .fruit, unit: "本"),
        Vegetable(id: 3, name: "大根", colors: [.white], type: .root, unit: "本"),
        Vegetable(id: 4, name: "なす", colors: [.purple], type: .fruit, unit: "本"),
        Vegetable(id: 5, name: "トマト", colors: [.red], type: .fruit, unit: "個")
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
