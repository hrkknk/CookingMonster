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
        Vegetable(id: 0, name: "ピーマン", colors: [.green], type: .fruit),
        Vegetable(id: 1, name: "キャベツ", colors: [.green], type: .leaf),
        Vegetable(id: 2, name: "とうもろこし", colors: [.yellow], type: .fruit),
        Vegetable(id: 3, name: "大根", colors: [.white], type: .root),
        Vegetable(id: 4, name: "なす", colors: [.purple], type: .fruit),
        Vegetable(id: 5, name: "トマト", colors: [.red], type: .fruit)
    ]

    var body: some View {
        VStack {
            NavigationView {
                List (sharedData.vegetableSearchFilter.apply(vegetables: vegetables)) { vegetable in
                    Text(vegetable.name)
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
