//
//  RecipeMakingHomeView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/18.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingHomeView: View {
    @EnvironmentObject var sharedData: SharedData

    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 50) {
                Button(action: {
                    self.sharedData.displayedView = .recipeMakingIngredients
                }) {
                    Text("材料")
                }

                Button(action: {
                    self.sharedData.displayedView = .recipeMakingSeasoning
                }) {
                    Text("調味料")
                }

                Button(action: {
                    self.sharedData.displayedView = .recipeMakingProcedure
                }) {
                    Text("手順")
                }

                Button(action: {
                    self.sharedData.displayedView = .recipeMakingMemo
                }) {
                    Text("メモ")
                }
            }

            Spacer()

            VStack(spacing: 30) {
                Text("追加した材料： \(sharedData.recipe.ingredients.count)種類")
                Text("追加した調味料： 0種類")
                Text("追加した手順： 0")
                Text("追加したメモ： 0")
                Button(action: {
                    self.sharedData.displayedView = .home
                }) {
                    Text("戻る")
                }
            }
        }
    }
}

struct RecipeMakingHomeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingHomeView().environmentObject(SharedData())
    }
}
