//
//  ContentView.swift
//  SwiftUI BeizerPath
//
//  Created by dominator on 07/06/20.
//  Copyright © 2020 dominator. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var endAmount: CGFloat = 0
    @State var isFilled = false
    @State var scale: CGFloat = 1
    @State var angle: Angle = .degrees(360)
    
    var body: some View {
        ZStack{
            
            ShapeView(
                beizerPath: .swiftPath,
                pathBound: UIBezierPath.swiftPath.bounds
            )
                .trim(from: 0, to: endAmount)
                .stroke(Color(#colorLiteral(red: 0.9725490196, green: 0.5411764706, blue: 0.2117647059, alpha: 1)), lineWidth: 2)
                .opacity(self.isFilled ? 0 : 1)
            
            ForEach(0..<4) { index in
                ShapeView(
                    beizerPath: .swiftPath,
                    pathBound: UIBezierPath.swiftPath.bounds
                )
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9725490196, green: 0.5411764706, blue: 0.2117647059, alpha: 1)), Color(#colorLiteral(red: 0.9921568627, green: 0.1254901961, blue: 0.1254901961, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                )
                    .scaleEffect(self.scale == 1 ? 1 :  self.calculateScale(index: index))
                    .opacity(self.isFilled ? self.calculateOpacity(index: index) : 0)
            }
            
        }
        .frame(width: 200, height: 200)
        .onAppear(perform: animate)
    }
    
    func calculateOpacity(index: Int) -> Double{
         1 - (Double(index) * 0.3)
    }
    
    func calculateScale(index: Int) -> CGFloat{
        self.scale * ((CGFloat(index) * 0.3)+1)
    }
    
    func animate(){
        withAnimation(.easeOut(duration: 3)) {
            self.endAmount = 1
        }
        withAnimation(Animation.linear(duration: 1).delay(3)) {
            self.isFilled = true
        }
        withAnimation(Animation.easeInOut(duration: 3).repeatForever().delay(4.3)) {
            self.scale = 1.2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
