//
//  ContentView.swift
//  Guess the flaf
//
//  Created by mac on 23/8/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
//            first method
//            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
            
//            second method
//            LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .white, location: 0.15),
//                 Gradient.Stop(color: .black, location: 0.45)]), startPoint: .top, endPoint: .bottom)
            
//            third method
            
//            LinearGradient(gradient: Gradient(stops:
//               [.init(color: .white, location: 0.15),
//                .init(color: .black, location: 0.45)]), startPoint: .top, endPoint: .bottom)
//
            
//            Radial gradient
//
//            RadialGradient(gradient: .init(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
            
//            Angular gradient
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .black, .purple ]), center: .center)
        

    } .ignoresSafeArea()
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
