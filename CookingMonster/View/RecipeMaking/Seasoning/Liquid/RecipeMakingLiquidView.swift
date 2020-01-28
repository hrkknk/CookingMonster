//
//  RecipeMakingLiquidView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/28.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

enum LiquidSearchSegmentType {
    case colorSearch // default
    case tasteTypeSearch
}

struct RecipeMakingLiquidView: View {
    @EnvironmentObject var sharedData: SharedData
    @State var selectedSegment = LiquidSearchSegmentType.colorSearch

    var body: some View {
        VStack(spacing: 100) {
            Picker(selection: $selectedSegment, label: Text("")) {
                Text("国・地域でさがす").tag(LiquidSearchSegmentType.colorSearch)
                Text("味でさがす").tag(LiquidSearchSegmentType.tasteTypeSearch)
            }
            .pickerStyle(SegmentedPickerStyle())

            ScrollView(.horizontal) {
                HStack {
                    ForEach(getBoxes()) { box in
                        BoxView(box: box).onTapGesture {
                            self.showLiquidSeachView(id: box.id)
                        }
                    }
                }.padding(20)
            }

            Button(action: {
            }) {
                Text("戻る").onTapGesture {
                    self.sharedData.selectedSeasoning = nil
                    self.sharedData.displayedView = .recipeMakingSeasoning
                }
            }
        }
    }

    private func getBoxes() -> [Box] {
        var boxes: [Box] = []
        switch selectedSegment {
        case LiquidSearchSegmentType.tasteTypeSearch:
            boxes = [
                Box(id: 0, title: "甘い", imageUrl: "sweetLiquid"),
                Box(id: 1, title: "しょっぱい", imageUrl: "saltyLiquid"),
                Box(id: 2, title: "辛い", imageUrl: "spicyLiquid"),
                Box(id: 3, title: "すっぱい", imageUrl: "sourLiquid"),
                Box(id: 4, title: "香り", imageUrl: "fragranceLiquid"),
                Box(id: 5, title: "オイル", imageUrl: "oilyLiquid"),
                Box(id: 6, title: "アルコール", imageUrl: "alcoholLiquid"),
                Box(id: 7, title: "その他", imageUrl: "otherLiquid"),
            ]
        default:
            boxes = [
                Box(id: 7, title: "白", imageUrl: "whiteLiquid"),
                Box(id: 8, title: "赤", imageUrl: "redLiquid"),
                Box(id: 9, title: "黄", imageUrl: "yellowLiquid"),
                Box(id: 10, title: "茶", imageUrl: "brownLiquid"),
                Box(id: 11, title: "黒", imageUrl: "blackLiquid"),
                Box(id: 12, title: "緑", imageUrl: "greenLiquid"),
                Box(id: 13, title: "透明", imageUrl: "transparentLiquid"),
            ]
        }
        return boxes
    }

    private func showLiquidSeachView(id: Int) {
        //TODO: 検索パラメータを渡して画面遷移
        switch id {
        case 0:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .sweet)
        case 1:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .salty)
        case 2:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .spicy)
        case 3:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .sour)
        case 4:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .fragrance)
        case 5:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .oily)
        case 6:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .alcohol)
        case 7:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .unselected, taste: .other)
        case 8:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .white, taste: .unselected)
        case 9:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .red, taste: .unselected)
        case 10:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .yellow, taste: .unselected)
        case 11:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .brown, taste: .unselected)
        case 12:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .black, taste: .unselected)
        case 13:
            self.sharedData.liquidSearchFilter = LiquidSearchFilter(color: .green, taste: .unselected)
        default:
            print("Error: 不正なBox ID")
        }
        self.sharedData.displayedView = .recipeMakingLiquidSearch
    }
}

struct RecipeMakingLiquidView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingLiquidView()
    }
}
