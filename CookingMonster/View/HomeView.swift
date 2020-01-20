//
//  HomeView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/19.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var sharedData: SharedData

    var body: some View {
        VStack(spacing: 100) {
            Button(action: {
                self.sharedData.displayedView = .recipeMakingHome
            }) {
                Text("レシピをつくる")
            }

            Button(action: {
            }) {
                Text("レシピをさがす")
            }

            Button(action: {
            }) {
                Text("キッチンをみる")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
