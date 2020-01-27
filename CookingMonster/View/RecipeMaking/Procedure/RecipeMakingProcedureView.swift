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
                        self.addProcedureToRecipe()
                        self.sharedData.displayedView = .recipeMakingHome
                    }) {
                        Text("完了")
                    }
                    Button(action: {
                        self.addProcedureToRecipe()
                        self.clearSelections()
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

    func addProcedureToRecipe() {
        let target: [ProcedureTarget] = [
            ProcedureTarget(foodStaff: selectedFoodStaff())
        ]
        let procedure = Procedure(title: "",
                                  order: self.sharedData.recipe.procedures.count,
                                  target: target,
                                  action: selectedAction,
                                  minute: nil,
                                  second: nil)
        sharedData.recipe.procedures.append(procedure)
    }

    func selectedFoodStaff() -> [FoodStaff] {
        var selectedFoodStaff: [FoodStaff] = []
        for selected in selectionKeeper {
            for foodStaff in sharedData.recipe.ingredients {
                if selected == foodStaff.name {
                    selectedFoodStaff.append(foodStaff)
                }
            }
            if let seasonings = sharedData.recipe.seasonings {
                for foodStaff in seasonings {
                    if selected == foodStaff.name {
                        selectedFoodStaff.append(foodStaff)
                    }
                }
            }
        }
        return selectedFoodStaff
    }

    func clearSelections() {
        selectedTarget = []
        selectedAction = .chop
        selectionKeeper.removeAll()
    }
}

struct RecipeMakingProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingProcedureView()
    }
}
