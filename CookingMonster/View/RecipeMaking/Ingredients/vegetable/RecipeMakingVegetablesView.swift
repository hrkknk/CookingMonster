//
//  RecipeMakingVegetablesView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/19.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

enum SegmentType {
    case colorSearch // default
    case classificationSearch
}

struct RecipeMakingVegetablesView: View {
    @EnvironmentObject var sharedData: SharedData
    @State var selectedSegment = SegmentType.colorSearch

    var body: some View {
        VStack(spacing: 100) {
            Picker(selection: $selectedSegment, label: Text("")) {
                Text("色でさがす").tag(SegmentType.colorSearch)
                Text("種類でさがす").tag(SegmentType.classificationSearch)
            }
            .pickerStyle(SegmentedPickerStyle())

            ScrollView(.horizontal) {
                HStack {
                    ForEach(getBoxes()) { box in
                        BoxView(box: box).onTapGesture {
                            self.showVegetableSeachView(id: box.id)
                        }
                    }
                }.padding(20)
            }

            Button(action: {
            }) {
                Text("戻る").onTapGesture {
                    self.sharedData.selectedIngredient = nil
                    self.sharedData.displayedView = .recipeMakingIngredients
                }
            }
        }
    }

    private func getBoxes() -> [Box] {
        var boxes: [Box] = []
        switch selectedSegment {
        case SegmentType.classificationSearch:
            boxes = [
                Box(id: 0, title: "葉物", imageUrl: "leafVegetable"),
                Box(id: 1, title: "根菜", imageUrl: "rootVegetable"),
                Box(id: 2, title: "果実", imageUrl: "fruitVegetable")
            ]
        default:
            boxes = [
                Box(id: 3, title: "赤", imageUrl: "red"),
                Box(id: 4, title: "黄", imageUrl: "yellow"),
                Box(id: 5, title: "緑", imageUrl: "green"),
                Box(id: 6, title: "白", imageUrl: "white"),
                Box(id: 7, title: "紫", imageUrl: "purple")
            ]
        }
        return boxes
    }

    private func showVegetableSeachView(id: Int) {
        //TODO: 検索パラメータを渡して画面遷移
        switch id {
        case 0:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .leaf, color: .unselected)
        case 1:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .root, color: .unselected)
        case 2:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .fruit, color: .unselected)
        case 3:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .red)
        case 4:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .yellow)
        case 5:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .green)
        case 6:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .white)
        case 7:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .purple)
        default:
            print("Error: 不正なBox ID")
        }
        self.sharedData.displayedView = .recipeMakingVegetableSearch
    }
}

struct RecipeMakingVegetablesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingVegetablesView()
    }
}
