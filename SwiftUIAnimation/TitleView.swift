//
//  TitleView.swift
//  SwiftUIAnimationDemo
//
//  Created by Agota Matyas on 05/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    
    @State var showTitle = false
    
    var body: some View {
            Text("Best Games")
                .font(.largeTitle)
                .fontWeight(.heavy) // add scale effect
                .scaleEffect(showTitle ? 1.2 : 1)
                .animation(.easeInOut)
                .onTapGesture {
                    self.showTitle.toggle()
        }
    }
    
    struct Title_Previews: PreviewProvider {
        static var previews: some View {
            TitleView()
        }
    }
}
