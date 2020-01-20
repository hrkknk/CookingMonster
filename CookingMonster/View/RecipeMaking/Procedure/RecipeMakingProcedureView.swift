//
//  RecipeMakingProcedureView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/19.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct RecipeMakingProcedureView: View {
    @EnvironmentObject var sharedData: SharedData

    var body: some View {
        Button(action: {
            self.sharedData.displayedView = .recipeMakingHome
        }) {
        Text("未実装(戻る)")
        }
    }
}

struct RecipeMakingProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingProcedureView()
    }
}
