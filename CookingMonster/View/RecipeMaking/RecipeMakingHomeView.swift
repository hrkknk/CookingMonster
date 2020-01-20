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
                Text("つくりかた")
            }

            Button(action: {
                self.sharedData.displayedView = .recipeMakingMemo
            }) {
                Text("メモ")
            }
            Button(action: {
                self.sharedData.displayedView = .home
            }) {
                Text("戻る")
            }
        }
    }
}

struct RecipeMakingHomeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingHomeView().environmentObject(SharedData())
    }
}
