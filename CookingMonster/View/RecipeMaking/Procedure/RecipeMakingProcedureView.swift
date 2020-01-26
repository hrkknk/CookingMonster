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
    @State var selectedTarget: ProcedureTarget?

    var body: some View {
        VStack(spacing: 50) {
            Text("手順 \(sharedData.recipe.procedures.count + 1)")

            containedView()

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

    func containedView() -> AnyView {
        guard let _ = selectedTarget else {
            return targetSelectView()
        }
        return procedureSelectView()
    }

    func targetSelectView() -> AnyView {
        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
        /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
        }
        return AnyView(Text("未実装"))
    }

    func procedureSelectView() -> AnyView {
        return AnyView(Text("未実装"))
    }
}

struct RecipeMakingProcedureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeMakingProcedureView()
    }
}
