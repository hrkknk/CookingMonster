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
        Button(action: {
            self.sharedData.displayedView = .recipeMakingHome
        }) {
        Text("未実装(戻る)")
        }
    }
}

struct RecipeMakingSeasoningView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingSeasoningView()
    }
}
