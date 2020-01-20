//
//  BoxView.swift
//  CookingMonster
//
//  Created by hiroki kaneko on 2020/01/21.
//  Copyright © 2020 hiroki kaneko. All rights reserved.
//

import SwiftUI

struct Box: Identifiable {
    var id: Int
    let title: String
    let imageUrl: String
    var cornerRadius: CGFloat = 12
    var width: CGFloat = 100
    var height: CGFloat = 100
}

struct BoxView: View {
    let box: Box
    var body: some View {
        VStack {
            Image("\(box.imageUrl)")
                .resizable()
                .cornerRadius(box.cornerRadius)
                .frame(width: box.width, height: box.height)
            Text("\(box.title)")
        }
    }
}
