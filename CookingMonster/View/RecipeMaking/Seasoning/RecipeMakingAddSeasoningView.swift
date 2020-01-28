//
//  RecipeMakingAddSeasoningView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/29.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingAddSeasoningView: View {
    @EnvironmentObject var sharedData: SharedData
    @State var amount: Int = 1

    var body: some View {
        VStack(spacing: 50) {
            seasoningName()
            Stepper(value: $amount, in: 0...10) {
                Text("\(self.amount) \(sharedData.selectedSeasoning?.unit ?? "")")
            }
            Button(action: {
                self.addSelectedSeasoningToRecipe()
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

    func seasoningName() -> Text {
        guard let seasoning = sharedData.selectedSeasoning else {
            return Text("エラーが発生しました")
        }
        return Text(seasoning.name)
    }

    func addSelectedSeasoningToRecipe() {
        sharedData.selectedSeasoning?.amount = self.amount
        if let seasoning = sharedData.selectedSeasoning {
            sharedData.recipe.seasonings += [seasoning]
        }
    }

}

struct RecipeMakingAddSeasoningView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingAddSeasoningView()
    }
}
