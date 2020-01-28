//
//  RecipeMakingSeasoningView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/19.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingSeasoningView: View {
    @EnvironmentObject var sharedData: SharedData

    var body: some View {
        VStack(spacing: 50) {
            Button(action: {
                self.sharedData.displayedView = DisplayedView.recipeMakingLiquid
            }) {
                Text("液体")
            }

            Button(action: {
            }) {
                Text("固体")
            }

            Button(action: {
            }) {
                Text("粉末")
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

struct RecipeMakingSeasoningView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingSeasoningView()
    }
}
