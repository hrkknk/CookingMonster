//
//  RecipeMakingLiquidSearchView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/28.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingLiquidSearchView: View {
        @EnvironmentObject var sharedData: SharedData

        // TODO: DBから取得
        let liquids: [Liquid] = [
            Liquid(id: UUID(), name: "醤油", colors: [.brown], taste: .salty, unit: "g"),
            Liquid(id: UUID(), name: "オリーブオイル", colors: [.transparent, .green], taste: .oily, unit: "g"),
            Liquid(id: UUID(), name: "みりん", colors: [.transparent, .white], taste: .other, unit: "g"),
            Liquid(id: UUID(), name: "白ワイン", colors: [.transparent, .white], taste: .alcohol, unit: "g"),
            Liquid(id: UUID(), name: "ごま油", colors: [.transparent, .yellow, .brown], taste: .oily, unit: "g"),
            Liquid(id: UUID(), name: "バルサミコ酢", colors: [.black, .brown], taste: .sour, unit: "g"),
            Liquid(id: UUID(), name: "ハチミツ", colors: [.transparent, .yellow], taste: .sweet, unit: "g"),
            Liquid(id: UUID(), name: "チリソース", colors: [.red], taste: .spicy, unit: "g"),
    ]

        var body: some View {
            VStack {
                NavigationView {
                    List (sharedData.liquidSearchFilter.apply(liquids: liquids)) { liquid in
                        Text(liquid.name).onTapGesture {
                            self.sharedData.selectedSeasoning = Seasoning(id: liquid.id, name: liquid.name, form: .liquid, amount: 1, unit: liquid.unit)
                            self.sharedData.displayedView = .recipeMakingAddSeasoning
                        }
                    }.navigationBarTitle("調味料(液体)をさがす")
                }

                Button(action: {
                }) {
                    Text("戻る").onTapGesture {
                        self.sharedData.displayedView = .recipeMakingLiquid
                    }
                }
            }
        }
    }


struct RecipeMakingLiquidSearchView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingLiquidSearchView()
    }
}
