//
//  RecipeMakingAddIngredientView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/22.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingAddIngredientView: View {
    @EnvironmentObject var sharedData: SharedData
    @State var amount: Int = 1

    var body: some View {
        VStack(spacing: 50) {
            ingredientName()
            Stepper(value: $amount, in: 0...10) {
                Text("\(self.amount) \(sharedData.selectedIngredient?.unit ?? "")")
            }
            Button(action: {
                self.addSelectedIngredientToRecipe()
                self.sharedData.displayedView = .recipeMakingHome
            }) {
            Text("レシピに追加する")
            }

            Button(action: {
            }) {
                Text("戻る").onTapGesture {
                    self.sharedData.displayedView = .recipeMakingVegetableSearch
                }
            }
        }
    }

    func ingredientName() -> Text {
        guard let ingredient = sharedData.selectedIngredient else {
            return Text("エラーが発生しました")
        }
        return Text(ingredient.name)
    }

    func addSelectedIngredientToRecipe() {
        sharedData.selectedIngredient?.amount = self.amount
        if let ingredient = sharedData.selectedIngredient {
            sharedData.recipe.ingredients += [ingredient]
        }
    }
}

struct RecipeMakingAddIngredientView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingAddIngredientView()
    }
}
