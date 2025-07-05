//
//  PokeballShape.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/21/24.
//

//import SwiftUI
//
//struct PokeballShapeView: View {
//    var body: some View {
//        GeometryReader(content: { geometry in
//            let width = min(geometry.size.width, geometry.size.height)
//            ZStack {
//                Circle()
//                    .foregroundColor(.black)
//                
//                Circle()
//                    .foregroundColor(.white)
//                    .frame(width: width * 0.85)
//                
//                Rectangle()
//                    .foregroundColor(.black)
//                    .frame(width: width * 0.9, height: width * 0.1)
//                
//                Circle()
//                    .foregroundColor(.black)
//                    .frame(width: width * 0.3)
//                
//                Circle()
//                    .foregroundColor(.white)
//                    .frame(width: width * 0.15)
//            }
//        })
//    }
//}
//
//#Preview("As View") {
//    PokeballShapeView()
//}
//
//#Preview("As Image") {
//    Image(uiImage:
//            ImageRenderer(
//                content:
//                    PokeballShapeView()
//                    .frame(width: 200, height: 200)
//            )
//                .uiImage!
//    )
//    .colorInvert()
//}

import SwiftUI

struct RotatingPokeBallView: View {
    @State private var isRotating = false

    var body: some View {
        ZStack {
            Circle() // Base circle for the PokeBall
                .foregroundColor(.white)
                .shadow(radius: 5)
            
            VStack(spacing: 0) {
                Circle() // Top half (red part)
                    .foregroundColor(.red)
                    .frame(maxHeight: .infinity, alignment: .top)
                Circle() // Bottom half (white part)
                    .foregroundColor(.white)
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .mask(Circle())
            
            Circle() // Center button outer part
                .strokeBorder(Color.black, lineWidth: 5)
                .background(Circle().foregroundColor(.white))
                .frame(width: 50, height: 50)
            
            Circle() // Center button inner part
                .foregroundColor(.black)
                .frame(width: 20, height: 20)
            
            Capsule() // Black middle band
                .foregroundColor(.black)
                .frame(width: 200, height: 10)
        }
        .frame(width: 200, height: 200)
        .rotation3DEffect(.degrees(isRotating ? 360 : 0), axis: (x: 0, y: 1, z: 0))
        .onAppear() {
            withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                isRotating = true
            }
        }
    }
}

struct RotatingPokeBallViewContentView: View {
    var body: some View {
        RotatingPokeBallView()
    }
}

struct RotatingPokeBallViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        RotatingPokeBallViewContentView()
    }
}

