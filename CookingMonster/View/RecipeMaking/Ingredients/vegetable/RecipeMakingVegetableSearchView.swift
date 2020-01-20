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
    
    var body: some View {
        VStack(spacing: 100) {
            Text("未実装")

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
