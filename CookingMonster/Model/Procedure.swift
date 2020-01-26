//
//  Procedure.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/24.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import Foundation

enum ProcedureAction {
    case bake //（オーブンで）焼く
    case broil //（上から直火で）焼く　※日本では一般的ではありませんが、アメリカのキッチンにはコンロと一体型のオーブンがついていてブロイルできるようになっています。
    case grill //（下から直火で）焼く
    case roast //（肉などをオーブンで）焼く
    case boil //（沸騰したお湯で）茹でる　※ゆで卵/boiled egg、沸騰した水/boiled water
    case steam //蒸す　※蒸し野菜/steamed egg、卵豆腐/ steamed egg custard
    case stew //煮込む
    case boilDown //煮詰める
    case poach //（弱火で）茹でる　※ポーチドエッグ/poached egg
    case stirFry //炒める
    case deepFry //揚げる
    case peal //皮をむく（主に手でむく場合）
    case pare //皮をむく（ナイフなどを使ってむく場合）
    case defrost //解凍する
    case grind //挽く　※コーヒー豆を挽く/grind coffee beans、こしょうを挽く/grind pepper
    case grate //おろす
    case soak //漬ける
    case simmer //とろとろ煮る
    case sprinkle //ふりかける　※こしょうをふりかける/sprinkle with pepper
    case toss //軽くあわせる
    case season //味つける
    case strain //こす
    case mash //すりつぶす、押しつぶす　※マッシュポテト/mashed potato
    case mix //混ぜる
    case chil //冷ます
    case serve //よそう
}

struct Procedure {
    var title: String
    var order: Int
    var target: [ProcedureTarget]
    var action: ProcedureAction
    var minute: Int?
    var second: Int?
}
