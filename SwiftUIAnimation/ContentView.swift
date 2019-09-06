//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Agota Matyas on 06/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 100) {
            TitleView()
                .offset(y: 100)
            Spacer()
            IconsView()
            Spacer()
            CardsView()
                .offset(y: -100)
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
