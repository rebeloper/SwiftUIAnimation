//
//  CardsView.swift
//  SwiftUIAnimationDemo
//
//  Created by Agota Matyas on 05/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct CardsView: View {
    
    @State var showCards = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            CardView(imageName: "image1", animationDuration: 1.2, showCards: $showCards, viewState: $viewState)
                .blur(radius: 0) // 0 : 3
                .scaleEffect(0.95) // 0.95 : 0.9
                .offset(x: 0 , y: -40) // 40 : 0 --- -200 : -40
                
                
            CardView(imageName: "image2", animationDuration: 0.7, showCards: $showCards, viewState: $viewState)
                .blur(radius: 0) // 0 : 3
                .scaleEffect(0.95) // 0.95 : 0.9
                .offset(x: 0 , y: 40) // -40 : 0 --- 220 : 40
            
            CardView(imageName: "image3", animationDuration: 1, showCards: $showCards, viewState: $viewState)
                .onTapGesture {
                    self.showCards.toggle()
            } // add DragGesture
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
