//
//  IconView.swift
//  SwiftUIAnimationDemo
//
//  Created by Agota Matyas on 05/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct IconView: View {
    
    var imageName: String
    var animationDuration: Double
    
    var body: some View {
        Image(imageName)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .frame(width: 120, height: 120)
            .shadow(color: Color.black, radius: 10, x: 0, y: 0)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 3))
            .animation(.easeInOut(duration: animationDuration))
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(imageName: "icon1", animationDuration: 1)
    }
}
