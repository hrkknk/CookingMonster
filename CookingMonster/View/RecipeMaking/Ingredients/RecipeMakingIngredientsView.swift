//
//  RecipeMakingIngredientsView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/19.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingIngredientsView: View {
    @EnvironmentObject var sharedData: SharedData

    var body: some View {
        VStack(spacing: 50) {
            Button(action: {
                self.sharedData.displayedView = DisplayedView.recipeMakingVegetable
            }) {
                Text("野菜")
            }

            Button(action: {
            }) {
                Text("肉類")
            }

            Button(action: {
            }) {
                Text("魚類")
            }

            Button(action: {
            }) {
                Text("穀類")
            }
            Button(action: {
            }) {
                Text("その他")
            }

            Text("レシピに追加した材料： \(sharedData.recipe.ingredients.count)種類")

            Button(action: {
            }) {
                Text("戻る").onTapGesture {
                    self.sharedData.displayedView = .recipeMakingHome
                }
            }
        }
    }
}

struct RecipeMakingIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingIngredientsView()
    }
}
