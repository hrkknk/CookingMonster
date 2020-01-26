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
    @State var procedureNum: Int = 0
    @State var selectedTarget: [ProcedureTarget]?
    @State var selectedAction: ProcedureAction = .chop
    @State var selectionKeeper = Set<String>()

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 50) {
                Text("手順 \(self.sharedData.recipe.procedures.count + 1)")

                HStack {
                    NavigationView {
                        List(self.getIngredients(), id: \.self, selection: self.$selectionKeeper) { name in
                            Text(name)
                        }
                        .environment(\.editMode, .constant(EditMode.active))
                    }

                    Text("を")

                    Picker(selection: self.$selectedAction, label: Text("")) {
                        ForEach(ProcedureAction.allCases, id: \.self) { action in
                            Text(action.rawValue).tag(action)
                        }
                    }
                    .frame(maxWidth: geometry.size.width / 2)
                    .clipped()
                }

                HStack(spacing: 100) {
                    Button(action: {
                        self.sharedData.displayedView = .recipeMakingHome
                    }) {
                        Text("完了")
                    }
                    Button(action: {
                        self.sharedData.displayedView = .recipeMakingHome
                    }) {
                        Text("次の手順を入力する")
                    }
                }
            }
        }
    }

    func getIngredients() -> [String] {
        var ingredientsNameList: [String] = []
        for item in sharedData.recipe.ingredients {
            ingredientsNameList.append(item.name)
        }
        return ingredientsNameList
    }
}

struct RecipeMakingProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingProcedureView()
    }
}
