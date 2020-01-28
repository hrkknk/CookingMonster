//
//  RecipeMakingVegetableView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/19.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

enum VegetableSearchSegmentType {
    case colorSearch // default
    case classificationSearch
}

struct RecipeMakingVegetableView: View {
    @EnvironmentObject var sharedData: SharedData
    @State var selectedSegment = VegetableSearchSegmentType.colorSearch
    
    var body: some View {
        VStack(spacing: 100) {
            Picker(selection: $selectedSegment, label: Text("")) {
                Text("色でさがす").tag(VegetableSearchSegmentType.colorSearch)
                Text("種類でさがす").tag(VegetableSearchSegmentType.classificationSearch)
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
                    self.sharedData.displayedView = .recipeMakingIngredients
                }
            }
        }
    }
    
    private func getBoxes() -> [Box] {
        var boxes: [Box] = []
        switch selectedSegment {
        case VegetableSearchSegmentType.classificationSearch:
            boxes = [
                Box(id: 0, title: "葉物", imageUrl: "leafVegetable"),
                Box(id: 1, title: "根菜", imageUrl: "rootVegetable"),
                Box(id: 2, title: "果実", imageUrl: "fruitVegetable"),
                Box(id: 3, title: "きのこ", imageUrl: "mushroomVegetable"),
            ]
        default:
            boxes = [
                Box(id: 4, title: "赤", imageUrl: "redVegetable"),
                Box(id: 5, title: "黄", imageUrl: "yellowVegetable"),
                Box(id: 6, title: "緑", imageUrl: "greenVegetable"),
                Box(id: 7, title: "白", imageUrl: "whiteVegetable"),
                Box(id: 8, title: "紫", imageUrl: "purpleVegetable"),
                Box(id: 9, title: "茶", imageUrl: "brownVegetable"),
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
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .mushroom, color: .unselected)
        case 4:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .red)
        case 5:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .yellow)
        case 6:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .green)
        case 7:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .white)
        case 8:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .purple)
        case 9:
            self.sharedData.vegetableSearchFilter = VegetableSearchFilter(type: .unselected, color: .brown)
        default:
            print("Error: 不正なBox ID")
        }
        self.sharedData.displayedView = .recipeMakingVegetableSearch
    }
}

struct RecipeMakingVegetableView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingVegetableView()
    }
}
